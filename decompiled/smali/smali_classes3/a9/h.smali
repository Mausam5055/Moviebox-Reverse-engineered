.class public final La9/h;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/h;->a:Luz/a;

    return-void
.end method

.method public static a(Luz/a;)La9/h;
    .locals 1

    new-instance v0, La9/h;

    invoke-direct {v0, p0}, La9/h;-><init>(Luz/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, La9/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La9/h;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, La9/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La9/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
