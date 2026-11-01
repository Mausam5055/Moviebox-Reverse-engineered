.class final Ly4/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1

    const-class v0, Ljava/sql/Date;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/sql/Time;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/sql/Timestamp;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ly4/h$b;->a(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
