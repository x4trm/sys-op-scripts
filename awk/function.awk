BEGIN{FS=":"}
{
    user_tab[$1]+=1
}
END{
    for (x in user_tab)
        print x,user_tab[x]
}
