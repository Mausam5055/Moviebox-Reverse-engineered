.class public Lj5/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lk5/d;)V
    .locals 6

    new-instance v0, Lk5/a;

    const-string v1, "white"

    invoke-direct {v0, v1}, Lk5/a;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-static {v2, v1}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk5/a;->d:Ljava/lang/String;

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v3, v0, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v3, "whiteU"

    invoke-direct {v1, v3, v0}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lk5/a;->i:Z

    iget-object v3, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v4, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lk5/a;

    const-string v4, "whiteUI"

    invoke-direct {v3, v4, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v3, Lk5/a;->g:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v4, v3, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "whiteI"

    invoke-direct {v1, v4, v3}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lk5/a;->i:Z

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "green"

    invoke-direct {v1, v4}, Lk5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk5/a;->d:Ljava/lang/String;

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "greenU"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v5, "greenUI"

    invoke-direct {v1, v5, v4}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v1, Lk5/a;->g:Z

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "greenI"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v3, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "blue"

    invoke-direct {v1, v4}, Lk5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk5/a;->d:Ljava/lang/String;

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "blueU"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v5, "blueUI"

    invoke-direct {v1, v5, v4}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v1, Lk5/a;->g:Z

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "blueI"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v3, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "cyan"

    invoke-direct {v1, v4}, Lk5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk5/a;->d:Ljava/lang/String;

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "cyanU"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v5, "cyanUI"

    invoke-direct {v1, v5, v4}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v1, Lk5/a;->g:Z

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "cyanI"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v3, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "red"

    invoke-direct {v1, v4}, Lk5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk5/a;->d:Ljava/lang/String;

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "redU"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v5, "redUI"

    invoke-direct {v1, v5, v4}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v1, Lk5/a;->g:Z

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "redI"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v3, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "yellow"

    invoke-direct {v1, v4}, Lk5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk5/a;->d:Ljava/lang/String;

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "yellowU"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v5, "yellowUI"

    invoke-direct {v1, v5, v4}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v1, Lk5/a;->g:Z

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "yellowI"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v3, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "magenta"

    invoke-direct {v1, v4}, Lk5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk5/a;->d:Ljava/lang/String;

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "magentaU"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v5, "magentaUI"

    invoke-direct {v1, v5, v4}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v1, Lk5/a;->g:Z

    iget-object v4, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lk5/a;

    const-string v5, "magentaI"

    invoke-direct {v4, v5, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v3, v4, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v5, v4, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "black"

    invoke-direct {v1, v4}, Lk5/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lk5/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lk5/a;->d:Ljava/lang/String;

    iget-object v2, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v4, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lk5/a;

    const-string v4, "blackU"

    invoke-direct {v2, v4, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v2, Lk5/a;->i:Z

    iget-object v1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v4, v2, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/a;

    const-string v4, "blackUI"

    invoke-direct {v1, v4, v2}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v0, v1, Lk5/a;->g:Z

    iget-object v0, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v2, v1, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lk5/a;

    const-string v2, "blackI"

    invoke-direct {v0, v2, v1}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    iput-boolean v3, v0, Lk5/a;->i:Z

    iget-object p1, p1, Lk5/d;->g:Ljava/util/Hashtable;

    iget-object v1, v0, Lk5/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Lk5/b;[BILk5/d;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    const-string v6, "white"

    const-string v7, ""

    move-object v11, v6

    move-object v9, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    array-length v13, v1

    if-ge v8, v13, :cond_e

    aget-byte v13, v1, v8

    if-gez v13, :cond_b

    const/16 v14, -0x71

    if-gt v13, v14, :cond_1

    add-int/lit8 v15, v8, 0x1

    array-length v5, v1

    if-ge v15, v5, :cond_0

    aget-byte v5, v1, v15

    if-ne v13, v5, :cond_0

    move v8, v15

    :cond_0
    aget-byte v5, v1, v8

    const/16 v13, -0x76

    if-eq v5, v13, :cond_a

    if-eq v5, v14, :cond_2

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v14, 0x0

    goto/16 :goto_7

    :pswitch_0
    const/4 v10, 0x0

    goto :goto_1

    :pswitch_1
    move v10, v4

    goto :goto_1

    :pswitch_2
    const/4 v12, 0x0

    goto :goto_1

    :pswitch_3
    move v12, v4

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lk5/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lk5/b;->d:Ljava/lang/String;

    if-eqz v10, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "U"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_3
    if-eqz v12, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "I"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_4
    iget-object v5, v3, Lk5/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v5, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/a;

    if-ne v2, v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lk5/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v9, Lk5/a;

    invoke-direct {v9, v8, v5}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    const-string v5, "bottom-left"

    iput-object v5, v9, Lk5/a;->f:Ljava/lang/String;

    iget-object v5, v3, Lk5/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v5, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v11, v8

    move-object v5, v9

    goto :goto_4

    :cond_5
    iget-object v5, v3, Lk5/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/a;

    :goto_3
    move-object v11, v8

    goto :goto_4

    :cond_6
    const/4 v8, 0x3

    if-ne v2, v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "R"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lk5/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    new-instance v9, Lk5/a;

    invoke-direct {v9, v8, v5}, Lk5/a;-><init>(Ljava/lang/String;Lk5/a;)V

    const-string v5, "bottom-rigth"

    iput-object v5, v9, Lk5/a;->f:Ljava/lang/String;

    iget-object v5, v3, Lk5/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v5, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v5, v3, Lk5/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/a;

    goto :goto_3

    :cond_8
    :goto_4
    iput-object v5, v0, Lk5/b;->a:Lk5/a;

    iget-object v5, v0, Lk5/b;->b:Lk5/c;

    iget v5, v5, Lk5/c;->a:I

    :goto_5
    iget-object v8, v3, Lk5/d;->i:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/2addr v5, v4

    goto :goto_5

    :cond_9
    iget-object v8, v3, Lk5/d;->i:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v8, v1

    :goto_6
    move-object v9, v7

    goto/16 :goto_1

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lk5/b;->d:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<br />"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lk5/b;->d:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const/16 v5, 0x20

    if-ge v13, v5, :cond_d

    add-int/lit8 v5, v8, 0x1

    array-length v14, v1

    if-ge v5, v14, :cond_c

    aget-byte v14, v1, v5

    if-ne v13, v14, :cond_c

    move v8, v5

    :cond_c
    aget-byte v5, v1, v8

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_4
    move-object v11, v6

    goto/16 :goto_1

    :pswitch_5
    const-string v11, "cyan"

    goto/16 :goto_1

    :pswitch_6
    const-string v11, "magenta"

    goto/16 :goto_1

    :pswitch_7
    const-string v11, "blue"

    goto/16 :goto_1

    :pswitch_8
    const-string v11, "yellow"

    goto/16 :goto_1

    :pswitch_9
    const-string v11, "green"

    goto/16 :goto_1

    :pswitch_a
    const-string v11, "red"

    goto/16 :goto_1

    :pswitch_b
    const-string v11, "black"

    goto/16 :goto_1

    :cond_d
    new-array v5, v4, [B

    const/4 v14, 0x0

    aput-byte v13, v5, v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    add-int/2addr v8, v4

    goto/16 :goto_0

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x80
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "/"

    const-string v9, "h:m:s:f/fps"

    const-string v10, ""

    const-string v11, ":"

    new-instance v12, Lk5/d;

    invoke-direct {v12}, Lk5/d;-><init>()V

    move-object/from16 v13, p1

    iput-object v13, v12, Lk5/d;->e:Ljava/lang/String;

    const/16 v13, 0x400

    new-array v14, v13, [B

    const/16 v15, 0x80

    new-array v2, v15, [B

    :try_start_0
    invoke-direct {v1, v12}, Lj5/c;->a(Lk5/d;)V

    invoke-virtual {v0, v14}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lt v15, v13, :cond_c

    const/4 v13, 0x6

    aget-byte v15, v14, v13

    const/16 v16, 0x7

    aget-byte v17, v14, v16

    new-array v13, v6, [B

    aput-byte v15, v13, v5

    aput-byte v17, v13, v7

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v15, 0xc

    aget-byte v17, v14, v15

    const/16 v19, 0xd

    aget-byte v19, v14, v19

    new-array v15, v6, [B

    aput-byte v17, v15, v5

    aput-byte v19, v15, v7

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v15, 0x20

    new-array v6, v15, [B

    const/16 v7, 0x10

    invoke-static {v14, v7, v6, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    new-array v6, v15, [B

    const/16 v4, 0x30

    invoke-static {v14, v4, v6, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    const/16 v6, 0xee

    aget-byte v6, v14, v6

    const/16 v15, 0xef

    aget-byte v15, v14, v15

    const/16 v23, 0xf0

    aget-byte v23, v14, v23

    const/16 v24, 0xf1

    aget-byte v24, v14, v24

    const/16 v25, 0xf2

    aget-byte v25, v14, v25

    move-object/from16 v26, v9

    const/4 v5, 0x5

    new-array v9, v5, [B

    const/4 v5, 0x0

    aput-byte v6, v9, v5

    const/4 v5, 0x1

    aput-byte v15, v9, v5

    const/4 v5, 0x2

    aput-byte v23, v9, v5

    const/4 v5, 0x3

    aput-byte v24, v9, v5

    const/4 v5, 0x4

    aput-byte v25, v9, v5

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xf3

    aget-byte v6, v14, v6

    const/16 v9, 0xf4

    aget-byte v9, v14, v9

    const/16 v15, 0xf5

    aget-byte v15, v14, v15

    const/16 v23, 0xf6

    aget-byte v23, v14, v23

    const/16 v24, 0xf7

    aget-byte v14, v14, v24

    move-object/from16 v25, v8

    move/from16 v24, v13

    const/4 v13, 0x5

    new-array v8, v13, [B

    const/4 v13, 0x0

    aput-byte v6, v8, v13

    const/4 v6, 0x1

    aput-byte v9, v8, v6

    const/4 v6, 0x2

    aput-byte v15, v8, v6

    const/4 v6, 0x3

    aput-byte v23, v8, v6

    const/4 v6, 0x4

    aput-byte v14, v8, v6

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lk5/d;->a:Ljava/lang/String;

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lk5/d;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Only latin alphabet supported for import from STL, other languages may produce unexpected results.\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lk5/d;->j:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lk5/d;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Invalid Character Code table number, corrupt data? will try to parse anyways assuming it is latin.\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lk5/d;->j:Ljava/lang/String;

    :cond_2
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v4, v5, :cond_a

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/16 v13, 0x80

    if-ge v9, v13, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Lk5/d;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Unexpected end of file, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " blocks read, expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " blocks in total.\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lk5/d;->j:Ljava/lang/String;

    goto/16 :goto_6

    :cond_3
    if-nez v7, :cond_4

    new-instance v3, Lk5/b;

    invoke-direct {v3}, Lk5/b;-><init>()V

    :cond_4
    const/4 v7, 0x1

    aget-byte v9, v2, v7

    const/4 v7, 0x2

    aget-byte v14, v2, v7

    mul-int/lit16 v14, v14, 0x100

    add-int/2addr v9, v14

    if-eq v9, v8, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lk5/d;->j:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "Unexpected subtitle number at TTI block "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ". Parsing proceeds...\n\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v12, Lk5/d;->j:Ljava/lang/String;

    :cond_5
    const/4 v9, 0x3

    aget-byte v14, v2, v9

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x5

    aget-byte v7, v2, v17

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    aget-byte v9, v2, v7

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v9, v2, v16

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x8

    aget-byte v9, v2, v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x9

    aget-byte v7, v2, v18

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    aget-byte v7, v2, v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xb

    aget-byte v7, v2, v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    aget-byte v13, v2, v7

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0xe

    aget-byte v15, v2, v15

    const/16 v20, 0xf

    aget-byte v20, v2, v20

    if-nez v20, :cond_8

    const/16 v7, 0x70

    new-array v0, v7, [B

    move/from16 v22, v5

    move-object/from16 v21, v10

    const/16 v5, 0x10

    const/4 v10, 0x0

    invoke-static {v2, v5, v0, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v14, :cond_7

    invoke-direct {v1, v3, v0, v15, v12}, Lj5/c;->c(Lk5/b;[BILk5/d;)V

    :goto_4
    move/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v24, v2

    move-object/from16 v2, v26

    goto :goto_5

    :cond_7
    new-instance v7, Lk5/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v25

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v24

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v2

    move-object/from16 v2, v26

    invoke-direct {v7, v2, v5}, Lk5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v3, Lk5/b;->b:Lk5/c;

    new-instance v5, Lk5/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v2, v7}, Lk5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Lk5/b;->c:Lk5/c;

    invoke-direct {v1, v3, v0, v15, v12}, Lj5/c;->c(Lk5/b;[BILk5/d;)V

    goto :goto_5

    :cond_8
    move/from16 v22, v5

    move-object/from16 v21, v10

    goto :goto_4

    :goto_5
    const/4 v0, 0x1

    if-nez v14, :cond_9

    add-int/2addr v8, v0

    :cond_9
    add-int/2addr v4, v0

    move-object/from16 v0, p3

    move-object/from16 v26, v2

    move-object/from16 v25, v9

    move v7, v14

    move/from16 v5, v22

    move-object/from16 v2, v24

    move/from16 v24, v10

    move-object/from16 v10, v21

    goto/16 :goto_2

    :cond_a
    :goto_6
    if-eq v8, v6, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lk5/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Number of parsed subtitles ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") different from expected number of subtitles ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lk5/d;->j:Ljava/lang/String;

    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v12}, Lk5/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, v12, Lk5/d;->m:Z

    return-object v12

    :cond_c
    :try_start_1
    new-instance v0, Lcom/avery/subtitle/exception/FatalParsingException;

    const-string v2, "The file must contain at least a GSI block"

    invoke-direct {v0, v2}, Lcom/avery/subtitle/exception/FatalParsingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/avery/subtitle/exception/FatalParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format error in the file, migth be due to corrupt data.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/avery/subtitle/exception/FatalParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
