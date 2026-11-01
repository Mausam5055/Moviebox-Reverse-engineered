.class public final La7/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(La7/c$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La7/c$a;->c:Z

    iput-boolean v0, p0, La7/c$a;->e:Z

    invoke-static {p1}, La7/c$b;->b(La7/c$b;)Z

    move-result v0

    iput-boolean v0, p0, La7/c$a;->a:Z

    invoke-static {p1}, La7/c$b;->d(La7/c$b;)Z

    move-result v0

    iput-boolean v0, p0, La7/c$a;->b:Z

    invoke-static {p1}, La7/c$b;->e(La7/c$b;)Z

    move-result v0

    iput-boolean v0, p0, La7/c$a;->c:Z

    invoke-static {p1}, La7/c$b;->f(La7/c$b;)I

    move-result v0

    iput v0, p0, La7/c$a;->d:I

    invoke-static {p1}, La7/c$b;->g(La7/c$b;)Z

    move-result v0

    iput-boolean v0, p0, La7/c$a;->e:Z

    invoke-static {p1}, La7/c$b;->a(La7/c$b;)Z

    move-result p1

    sput-boolean p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b:Z

    return-void
.end method

.method static synthetic a(La7/c$a;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$a;->c:Z

    return p0
.end method

.method static synthetic b(La7/c$a;Z)Z
    .locals 0

    iput-boolean p1, p0, La7/c$a;->a:Z

    return p1
.end method

.method static synthetic c(La7/c$a;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$a;->a:Z

    return p0
.end method

.method static synthetic d(La7/c$a;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$a;->e:Z

    return p0
.end method

.method static synthetic e(La7/c$a;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$a;->b:Z

    return p0
.end method

.method static synthetic f(La7/c$a;)I
    .locals 0

    iget p0, p0, La7/c$a;->d:I

    return p0
.end method
