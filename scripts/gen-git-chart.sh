cd ../
git log --pretty=format:"<li> <div class="b">%cd</div> <br /> %s </li>" ./sources > tests/test.html
