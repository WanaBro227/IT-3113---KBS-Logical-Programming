# Prolog Knowledge Base

This project is a **Prolog knowledge base** containing simple facts about foods, animals, people, relationships, objects, and months.  
It is useful for learning **basic Prolog syntax, querying facts, and exploring relationships**.  

---

## 📂 Files
- `knowledge_base.pl` → Contains all Prolog facts.

---

## 🚀 How to Run
1. Install **SWI-Prolog** (or another Prolog interpreter).  
   👉 [Download SWI-Prolog](https://www.swi-prolog.org/Download.html)  
2. Load the knowledge base file:
   ```prolog
   ?- [knowledge_base].
   ```
3. Run queries to explore facts and relationships.

---

## 📖 Example Queries

### ✅ Querying Facts
```prolog
?- food(pizza).
true.

?- fruit(kiwi).
true.

?- animal(dog).
true.
```

### ❌ Checking Non-Existing Facts
```prolog
?- food(chicken).
false.
```

### 👫 Relationships
```prolog
?- likes(john, ann).
true.

?- loves(vincent, mia).
true.

?- studies(charlie, ai).
true.
```

### 📅 Working with Months
```prolog
?- month(march).
true.

?- next_month(october, september).
true.
```

### 🎨 Properties
```prolog
?- color_of(elephant, black).
true.

?- shape(circle).
true.
```

---

## 🔑 Key Concepts Practiced
- Declaring **facts** in Prolog  
- Querying a **knowledge base**  
- Using **relationships** (likes, loves, studies, etc.)  
- Representing categories such as **food, animals, people, objects, and months**  

---

## 📝 Notes
- This knowledge base contains **only facts** (no rules yet).  
- You can extend it further by adding:  
  - Rules (`X likes Y :- ...`)  
  - More facts in each category  
  - Queries combining multiple relations  
