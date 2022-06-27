from typing import List
import uuid

class Answer:
  answer: str
  #questionId
  #userId
  def __init__(self) -> None:
    self.answer = ''
  def __str__(self) -> str:
    return self.answer
class Question:
  text: str
  answers: List[Answer]
  #userId
  def __init__(self, question: str = '') -> None:
    self.text = question
    self.answers = []
  def __str__(self) -> str:
    return self.text

class User:
  id: str
  questions: List[Question]
  answers: List[Answer]
  
  def __init__(self):
    self.questions = []
    self.answers = []
    self.id = str(uuid.uuid4())
  

class StackOverflow:
  
  users: List[User] # better with dictionary if user has unique id
  def __init__(self) -> None:
      self.users = []

  def createUser(self) -> User:
    user = User()
    self.users.append(user)
    return user
  
  def askQuestion(self, user: 'User', question: str) -> None:
    questionObj = Question(question)
    user.questions.append(questionObj)
    
  def listQuestions(self) -> List[Question]:
    questions = []
    for user in self.users:
      for q in user.questions:
        questions.append('{0} asks {1}'.format(user.id, str(q))) 
    return questions
  
  def search(self, str) -> List[Question]:
    return []


## Testing
stackoverflow = StackOverflow()
user1 = stackoverflow.createUser()
user2 = stackoverflow.createUser()
stackoverflow.askQuestion(user1, 'question1')
stackoverflow.askQuestion(user1, 'question2')
stackoverflow.askQuestion(user2, 'question2')
print(stackoverflow.listQuestions())


  
  
