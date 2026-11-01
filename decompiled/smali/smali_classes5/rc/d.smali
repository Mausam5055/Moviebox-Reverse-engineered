.class public final Lrc/d;
.super Ljava/lang/Object;

# interfaces
.implements Luz/a;


# instance fields
.field private final a:Lrc/a;


# direct methods
.method public constructor <init>(Lrc/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc/d;->a:Lrc/a;

    return-void
.end method

.method public static a(Lrc/a;)Lrc/d;
    .locals 1

    new-instance v0, Lrc/d;

    invoke-direct {v0, p0}, Lrc/d;-><init>(Lrc/a;)V

    return-object v0
.end method

.method public static c(Lrc/a;)Ljc/e;
    .locals 0

    invoke-virtual {p0}, Lrc/a;->c()Ljc/e;

    move-result-object p0

    invoke-static {p0}, Lhz/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljc/e;

    return-object p0
.end method


# virtual methods
.method public b()Ljc/e;
    .locals 1

    iget-object v0, p0, Lrc/d;->a:Lrc/a;

    invoke-static {v0}, Lrc/d;->c(Lrc/a;)Ljc/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lrc/d;->b()Ljc/e;

    move-result-object v0

    return-object v0
.end method
