.class public final Lrc/h;
.super Ljava/lang/Object;

# interfaces
.implements Luz/a;


# instance fields
.field private final a:Lrc/a;


# direct methods
.method public constructor <init>(Lrc/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc/h;->a:Lrc/a;

    return-void
.end method

.method public static a(Lrc/a;)Lrc/h;
    .locals 1

    new-instance v0, Lrc/h;

    invoke-direct {v0, p0}, Lrc/h;-><init>(Lrc/a;)V

    return-object v0
.end method

.method public static c(Lrc/a;)Lic/b;
    .locals 0

    invoke-virtual {p0}, Lrc/a;->g()Lic/b;

    move-result-object p0

    invoke-static {p0}, Lhz/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lic/b;

    return-object p0
.end method


# virtual methods
.method public b()Lic/b;
    .locals 1

    iget-object v0, p0, Lrc/h;->a:Lrc/a;

    invoke-static {v0}, Lrc/h;->c(Lrc/a;)Lic/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lrc/h;->b()Lic/b;

    move-result-object v0

    return-object v0
.end method
