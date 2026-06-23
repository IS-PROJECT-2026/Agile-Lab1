# THE AGILE LAB: CORPORATE "ABOUT ME" RELAY

## THE CORE RULE: THE DEVELOPMENT TOKEN
Only ONE person per team may edit files or push code at any given second. 
Before you type a single word or open a file, you MUST run: git pull origin main

NOTE: This sequential rule applies strictly to today's session because the 
current lab scope focuses entirely on mastering clean workflow pipelines 
and does not cover the resolution of merge conflicts.

---

## PHASE 1: THE TEAM ROSTER (README.md)

### Student 1 (The Founder)
1. Clone the repository to your laptop:
   git clone [your-repository-url]
2. Open the folder in VS Code.
3. Replace the text in README.md with your corporate details:
   * # [Insert Creative Business Name]
   * ## Company Vision
   * [Write a 2-sentence description of what your tech firm specializes in]
4. Stage, commit, and push your changes:
   git add .
   git commit -m "docs: initialize business name and vision"
   git push origin main

### Students 2, 3, 4, & 5 (The Executives)
Execute this sequentially, one-by-one (Student 2 finishes completely before Student 3 begins):
1. Update your local files immediately:
   git pull origin main
2. Open README.md and append your corporate title to the bottom of the roster:
   * **[Your Name]** - [Insert Executive Title, e.g., Chief Technology Officer]
3. Stage, commit, and push:
   git add .
   git commit -m "docs: add [Your Name] to company roster"
   git push origin main

---

## PHASE 2: THE "ABOUT ME" CODEBASE (index.html)

### Student 1 (The Architect)
1. Run: git pull origin main
2. Create a brand new file in VS Code named: index.html
3. Paste this exact structural HTML layout into the file:

<!DOCTYPE html>
<html>
<head>
    <title>Executive Team Profiles</title>
</head>
<body>
    <h1>Corporate Executive Directory</h1>
    <p>Meet the engineering minds driving our technical operations.</p>

    <!-- TEAM PROFILES GO BELOW THIS LINE -->

</body>
</html>

4. Save the file and push it up to the cloud:
   git add .
   git commit -m "feat: scaffold executive directory layout"
   git push origin main

### Students 2, 3, 4, & 5 (The Engineering Leads)
Execute this sequentially, one-by-one:
1. Run: git pull origin main
2. Open index.html. Find the <!-- TEAM PROFILES GO BELOW THIS LINE --> comment.
3. Paste your custom executive profile block directly underneath it using this exact structure:

<section style="margin-bottom: 20px; border-bottom: 1px solid #ccc; padding-bottom: 10px;">
    <h3>[Your Full Name]</h3>
    <p><strong>Professional Bio:</strong> [Write 1-2 sentences about your background and engineering mindset]</p>
    <p><strong>Core Tech Stack:</strong> [List 3-4 languages/frameworks you use, e.g., Python, Docker, PostgreSQL]</p>
    <p><strong>Key Project Focus:</strong> [Name 1 engineering objective or system you are responsible for optimizing]</p>
</section>

4. CRITICAL CHECK: Ensure all your HTML tags (<h3>, <p>, <section>) are closed correctly so you do not break your teammates' layouts.
5. Stage, commit, and deploy your profile live:
   git add .
   git commit -m "feat: integrate [Your Name] professional profile"
   git push origin main
