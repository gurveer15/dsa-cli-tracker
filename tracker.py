from database_handler import add_question, view_all_questions, update_status, delete_question, search_by_topic, search_by_status, suggest_another_question

def main():
    
    while True:
        print("Welcome to the DSA Interview Tracker!")
        print("1. Add a new question")
        print("2. View all questions")
        print("3. Update solve status")
        print("4. Delete a question")
        print("5. Search questions by topic")
        print("6. Search questions by status")
        print("7. Suggest a question")
        print("8. Exit")
        
        choice = input("Enter your choice: ")

        if choice == '1':
            title = input("Enter title: ")
            topic = input("Enter topic: ").strip()
            description = input("Enter description: ").strip()
            difficulty = input("Enter difficulty: ").strip()
            solvestatus = input("Enter status (Solved/Unsolved): ").capitalize().strip()
            add_question(title, topic, description, difficulty, solvestatus)

        elif choice == '2':
            view_all_questions()

        elif choice == '3':
            view_all_questions()
            question_id = int(input("Enter question ID to update: "))
            new_status = input("Enter new status: ").capitalize().strip()
            update_status(question_id, new_status)

        elif choice == '4':
            view_all_questions()
            question_id = int(input("Enter question ID to delete: "))
            delete_question(question_id)

        elif choice == '5':
            topic= input("Enter the topic to search questions from (Arrays, Strings, Backtracking, Searching, Sorting, LinkedList, Trees, DP): ").strip()
            search_by_topic(topic)
        
        elif choice == '6':
            status= input("Enter the status to search questions from (Solved/Unsolved): ").capitalize().strip()
            search_by_status(status)
        
        elif choice == '7':
            while True:
                topic_choice= input("Do you want me to suggest a question from any specific topic or difficulty level? (Y/N)").lower().strip()
                if topic_choice in ['y', 'n']:
                    break
                else:
                    print("Please enter Y or N")

            if(topic_choice=='y'):
                while True:
                    queschoice= input("For suggestion by topic Enter T, for suggestion by difficulty Enter D , for suggestion by both Enter B ").lower().strip()
                    if queschoice in ['t','d','b']:
                        break
                    else:
                        print("Please enter T, D or B")
                
            if(queschoice== 't'):
                topic= input("Enter topic (Arrays, Strings, Backtracking, Searching, Sorting, LinkedList, Trees, DP): ").capitalize().strip()
                suggest_another_question(topic,None)
            elif(queschoice=='d'):
                difficulty= input("Enter difficulty level (Easy/Medium/Hard): ").capitalize().strip()
                suggest_another_question(None,difficulty)
            elif(queschoice=='b'):
                topic= input("Enter topic(Arrays, Strings, Backtracking, Searching, Sorting, LinkedList, Trees, DP): ").capitalize().strip()
                difficulty= input("Enter difficulty level (Easy/Medium/Hard): ").capitalize().strip()
                suggest_another_question(topic,difficulty)
            else:
                suggest_another_question(None,None)

        elif choice == '8':
            print("Exiting...")
            break

        else:
            print("Invalid choice. Try again.")

if __name__ == "__main__":
    main()
