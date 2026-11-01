.class public final Lbq/z;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLFrameLayout;

.field public final b:Lcom/noober/background/view/BLFrameLayout;

.field public final c:Lcom/noober/background/view/BLTextView;

.field public final d:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLFrameLayout;Lcom/noober/background/view/BLFrameLayout;Lcom/noober/background/view/BLTextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbq/z;->a:Lcom/noober/background/view/BLFrameLayout;

    iput-object p2, p0, Lbq/z;->b:Lcom/noober/background/view/BLFrameLayout;

    iput-object p3, p0, Lbq/z;->c:Lcom/noober/background/view/BLTextView;

    iput-object p4, p0, Lbq/z;->d:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lbq/z;
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/noober/background/view/BLFrameLayout;

    sget v1, Lcom/transsion/room/R$id;->tv_title:I

    invoke-static {p0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/noober/background/view/BLTextView;

    if-eqz v2, :cond_0

    sget v1, Lcom/transsion/room/R$id;->v_selected:I

    invoke-static {p0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance p0, Lbq/z;

    invoke-direct {p0, v0, v0, v2, v3}, Lbq/z;-><init>(Lcom/noober/background/view/BLFrameLayout;Lcom/noober/background/view/BLFrameLayout;Lcom/noober/background/view/BLTextView;Landroid/view/View;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/z;
    .locals 2

    sget v0, Lcom/transsion/room/R$layout;->item_room_list_tab:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lbq/z;->a(Landroid/view/View;)Lbq/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/noober/background/view/BLFrameLayout;
    .locals 1

    iget-object v0, p0, Lbq/z;->a:Lcom/noober/background/view/BLFrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbq/z;->b()Lcom/noober/background/view/BLFrameLayout;

    move-result-object v0

    return-object v0
.end method
