.class public final Lqc/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lrc/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqc/a$a;)V
    .locals 0

    invoke-direct {p0}, Lqc/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lqc/b;
    .locals 3

    iget-object v0, p0, Lqc/a$b;->a:Lrc/a;

    const-class v1, Lrc/a;

    invoke-static {v0, v1}, Lhz/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lqc/a$c;

    iget-object v1, p0, Lqc/a$b;->a:Lrc/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqc/a$c;-><init>(Lrc/a;Lqc/a$a;)V

    return-object v0
.end method

.method public b(Lrc/a;)Lqc/a$b;
    .locals 0

    invoke-static {p1}, Lhz/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrc/a;

    iput-object p1, p0, Lqc/a$b;->a:Lrc/a;

    return-object p0
.end method
