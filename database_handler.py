import mysql.connector
import random  

# Connect to the MySQL database
def create_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",  
        password="Sift@7799",  
        database="project1" 
    )

# Function to add a new question
def add_question(title, topic, description, difficulty, solvestatus):
    conn = create_connection()
    cursor = conn.cursor()
    query = """INSERT INTO questions (title, topic, description, difficulty, solvestatus) 
               VALUES (%s, %s, %s, %s, %s)"""
    values = (title, topic, description, difficulty, solvestatus)
    cursor.execute(query, values)
    conn.commit()  # Commit the transaction to save changes
    print("Question added successfully.")
    cursor.close()
    conn.close()

# Function to update the status of a question
def update_status(question_id, new_status):
    conn = create_connection()
    cursor = conn.cursor()

    # Check current status
    cursor.execute("SELECT solvestatus FROM questions WHERE id = %s", (question_id,))
    result = cursor.fetchone()

    if not result:
        print(" No question found with this ID.")
    elif result[0].lower() == new_status.lower():
        print(f" The question is already marked as '{new_status}'. No update made.")
    else:
        query = "UPDATE questions SET solvestatus = %s WHERE id = %s"
        values = (new_status, question_id)
        cursor.execute(query, values)
        conn.commit()
        print(" Status updated successfully.")

    cursor.close()
    conn.close()


# Function to delete a question by its ID
def delete_question(question_id):
    conn = create_connection()
    cursor = conn.cursor()
    query = "DELETE FROM questions WHERE id = %s"
    values = (question_id,)
    cursor.execute(query, values)
    conn.commit()
    print("Question deleted successfully.")
    cursor.close()
    conn.close()

# Function to view all questions
def view_all_questions():
    conn = create_connection()
    cursor = conn.cursor()
    query = "SELECT * FROM questions"
    cursor.execute(query)
    result = cursor.fetchall()

    if result:
        print("\nQuestions List:")
        for row in result:
            print(f"{row[0]} | Title: {row[1]} | Topic: {row[2]} | Description: {row[3]} | Difficulty: {row[4]} | Status: {row[5]}")
    else:
        print("No questions found.")
    
    cursor.close()
    conn.close()

# Function to search questions by topic
def search_by_topic(topic):
    conn = create_connection()
    cursor = conn.cursor()
    query = """SELECT * FROM questions 
               WHERE topic = %s"""
    cursor.execute(query, (topic,))
    result = cursor.fetchall()

    if result:
        print(f"\nQuestions in topic '{topic}':")
        for row in result:
            print(f" {row[0]} | Title: {row[1]} | Description: {row[3]} | Difficulty: {row[4]} | Status: {row[5]}")
    else:
        print(f"No questions found in the topic '{topic}'.")

    cursor.close()
    conn.close()

# Function to search questions by status
def search_by_status(status):
    conn = create_connection()
    cursor = conn.cursor()
    query = """SELECT * FROM questions 
              WHERE solvestatus = %s"""
    cursor.execute(query, (status,))
    result = cursor.fetchall()

    if result:
        print(f"\nQuestions with status '{status}':")
        for row in result:
            print(f"{row[0]} | Title: {row[1]} | Topic: {row[2]} | Description : {row[3]} | Difficulty: {row[4]}")
    else:
        print(f"No questions found with status '{status}'.")

    cursor.close()
    conn.close()

# Function to suggest an unsolved question
def suggest_unsolved_question(topic, difficulty):
    conn = create_connection()
    cursor = conn.cursor()

    # Base query filtering by 'unsolved' status
    base_query = "SELECT * FROM questions WHERE LOWER(solvestatus) = 'unsolved'"
    params = []

    # Apply topic filter if provided
    if topic:
        base_query += " AND LOWER(topic) = %s"
        params.append(topic.lower())
    
    # Apply difficulty filter if provided
    if difficulty:
        base_query += " AND LOWER(difficulty) = %s"
        params.append(difficulty.lower())

    base_query += " ORDER BY RAND() LIMIT 1"

    # Execute the query
    cursor.execute(base_query, params)
    result = cursor.fetchone()

    # Check if result is found
    if result:
        print("\n🔍 Suggested Question:")
        print(f"Title      : {result[1]}")
        print(f"Topic      : {result[2]}")
        print(f"Description: {result[3]}")
        print(f"Difficulty : {result[4]}")
        print(f"Status     : {result[5]}\n")
    else:
        print("\nNo matching unsolved questions found.\n")

    cursor.close()
    conn.close()


def suggest_another_question(topic, difficulty):
    while True:
        suggest_unsolved_question(topic=topic, difficulty=difficulty)  # Suggest a question first

        # Ask the user if they want another question or return to the main menu
        print("\nWould you like to:")
        print("1. Suggest another question")
        print("2. Return to the main menu")

        choice = input("Enter your choice: ").strip()

        if choice == '1':
            continue  # Suggest another question (loop again)
        elif choice == '2':
            print("Returning to main menu...\n")
            break  # Exit and go back to the main menu
        else:
            print("Invalid choice. Please try again.")