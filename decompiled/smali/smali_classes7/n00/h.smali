.class public Ln00/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln00/h;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ln00/i;
    .locals 3

    invoke-static {}, Ln00/l;->d()Ln00/l;

    move-result-object v0

    invoke-virtual {v0}, Ln00/l;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Ln00/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln00/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ln00/i;

    move-result-object v0

    return-object v0
.end method
