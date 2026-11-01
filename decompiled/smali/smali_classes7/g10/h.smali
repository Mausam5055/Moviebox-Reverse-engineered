.class public Lg10/h;
.super Lg10/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg10/t;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lg10/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i([BIZ)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg10/t;->b([BI)Z

    iget-boolean p1, p0, Lg10/t;->h:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
