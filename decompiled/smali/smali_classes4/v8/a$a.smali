.class public final Lv8/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lv8/e;

.field private b:Ljava/util/List;

.field private c:Lv8/b;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv8/a$a;->a:Lv8/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lv8/a$a;->b:Ljava/util/List;

    iput-object v0, p0, Lv8/a$a;->c:Lv8/b;

    const-string v0, ""

    iput-object v0, p0, Lv8/a$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lv8/c;)Lv8/a$a;
    .locals 1

    iget-object v0, p0, Lv8/a$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lv8/a;
    .locals 5

    new-instance v0, Lv8/a;

    iget-object v1, p0, Lv8/a$a;->a:Lv8/e;

    iget-object v2, p0, Lv8/a$a;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lv8/a$a;->c:Lv8/b;

    iget-object v4, p0, Lv8/a$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lv8/a;-><init>(Lv8/e;Ljava/util/List;Lv8/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lv8/a$a;
    .locals 0

    iput-object p1, p0, Lv8/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lv8/b;)Lv8/a$a;
    .locals 0

    iput-object p1, p0, Lv8/a$a;->c:Lv8/b;

    return-object p0
.end method

.method public e(Lv8/e;)Lv8/a$a;
    .locals 0

    iput-object p1, p0, Lv8/a$a;->a:Lv8/e;

    return-object p0
.end method
