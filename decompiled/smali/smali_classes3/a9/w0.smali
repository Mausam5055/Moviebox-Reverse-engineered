.class public final La9/w0;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;

.field private final c:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/w0;->a:Luz/a;

    iput-object p2, p0, La9/w0;->b:Luz/a;

    iput-object p3, p0, La9/w0;->c:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;)La9/w0;
    .locals 1

    new-instance v0, La9/w0;

    invoke-direct {v0, p0, p1, p2}, La9/w0;-><init>(Luz/a;Luz/a;Luz/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)La9/v0;
    .locals 1

    new-instance v0, La9/v0;

    invoke-direct {v0, p0, p1, p2}, La9/v0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public b()La9/v0;
    .locals 3

    iget-object v0, p0, La9/w0;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, La9/w0;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, La9/w0;->c:Luz/a;

    invoke-interface {v2}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, La9/w0;->c(Landroid/content/Context;Ljava/lang/String;I)La9/v0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La9/w0;->b()La9/v0;

    move-result-object v0

    return-object v0
.end method
