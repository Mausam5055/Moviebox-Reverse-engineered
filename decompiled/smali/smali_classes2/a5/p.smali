.class public final La5/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lcom/alibaba/fastjson/util/d;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/p;->a:Ljava/lang/Class;

    iput-object p2, p0, La5/p;->b:Lcom/alibaba/fastjson/util/d;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/d;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La5/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, La5/p;->b:Lcom/alibaba/fastjson/util/d;

    iget v0, v0, Lcom/alibaba/fastjson/util/d;->i:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, La5/p;->b:Lcom/alibaba/fastjson/util/d;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/d;->r:Z

    return v0
.end method
