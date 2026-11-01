.class public Lpe/d;
.super Lpe/b;


# direct methods
.method public constructor <init>(Lpe/b$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lpe/b;-><init>(Lpe/b$b;)V

    return-void
.end method


# virtual methods
.method protected varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lpe/b;->b:Lpe/b$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lpe/b$b;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lpe/d;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
