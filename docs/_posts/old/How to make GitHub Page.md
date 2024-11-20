---
title: How to make GitHub Page
---

I first made my GitHub page on 2016-7-24, inspired by Xiaolai Li. In the past 6 months, I have learned a lot and realized how a visual impressive is important, not only for girls.  So I would like to improve my GitHub page.

At that time, I summarize 3 ways to build a GitHub page:

1. idiot way. Just follow [https://pages.github.com/](https://pages.github.com/) and you are secured by an ugly html page. A better approach is in the repo page, `setting-> Github pages -> automatic page generator`. It is markdown supported and much better.
2. **Jekyll**, which is a static site generator in Ruby. https://jekyllrb.com/. For a basic idea, follow [ruanyi feng's blog](http://www.ruanyifeng.com/blog/2012/08/blogging_with_jekyll.html). You will need to create a repo with ph-pages branch. This plus MD-not-supported make it not appealing at all. 
3. **Hexo**.  The official website https://hexo.io/ is very user-friendly. Alternatively, I would recommend follow [Xiaolai.li](http://xiaolai.li/2016/06/22/makecs-build-a-blog-with-hexo-on-github/ ) if you can read Chinese. However, it doesn't exist for unknown reasons. 

Now let's focus on Hexo. 

## Creation phase

1. create repository in GitHub with `username.github.io`, add a README.md to avoid empty copy

2. create local copy `git clone url` 

3. initialize: 

   ```shell
   hexo init yourname.github.io 
   cd yourname.github.io 
   npm install hexo-deployer-git --save 
   hexo generate 
   hexo server 
   ```

   with `hexo server` on hold, you can preview your website in http://localhost:4000/

4. configure `_config.yml` file:

   ```shell
   deploy: 
   type: git repo: https://github.com/username/username.github.io.git
   ```

   ​

5. `hexo deploy` so you can see username.github.io.

## Routine phase

1. Open terminal, `cd github_all/jychstar.github.io`
2. Produce a .md file by `hexo new "file name"` . some must-have attributes like title, date and tag. Title is the real title for your post.
3. Go to folder, jychstar.github.io-> source->_posts, find the new file and begin to write your genuine ideas.
4. Publish your ideas in one line `hexo generate -d`. 
5. If you want to see what it looks like before it's online:
- `hexo generate` will generate html files and styles in **public** folder.
- `hexo server` start **local server**: [http://localhost:4000/](http://localhost:4000/) as you wish
- `hexo deploy` push **public** folder to GitHub.What it is actually combine are 3 git commands: `git add, git commit, git push`.  
## Note

- revise `_config.yml` to change the site name, author, etc.
- delete previous md files will cause fatal error. I don’t know why. But revise the content in md file is totally fine.