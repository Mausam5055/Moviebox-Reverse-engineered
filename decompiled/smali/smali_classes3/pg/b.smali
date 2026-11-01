.class public final Lpg/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/tn/lib/net/cons/HeaderType;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lpg/b;->c:Ljava/lang/String;

    sget-object v0, Lcom/tn/lib/net/cons/HeaderType;->ONE_ROOM:Lcom/tn/lib/net/cons/HeaderType;

    iput-object v0, p0, Lpg/b;->d:Lcom/tn/lib/net/cons/HeaderType;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/lib/net/cons/HeaderType;
    .locals 1

    iget-object v0, p0, Lpg/b;->d:Lcom/tn/lib/net/cons/HeaderType;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpg/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lpg/b;->a:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lpg/b;->b:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lpg/b;->a:Z

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lpg/b;->b:Z

    return-void
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lpg/b;->e:J

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpg/b;->c:Ljava/lang/String;

    return-void
.end method
