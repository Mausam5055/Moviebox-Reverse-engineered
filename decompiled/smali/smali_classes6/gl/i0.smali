.class public final Lgl/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLConstraintLayout;

.field public final b:Landroidx/constraintlayout/widget/Group;

.field public final c:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lcom/tn/lib/widget/TnTextView;

.field public final g:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLConstraintLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl/i0;->a:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p2, p0, Lgl/i0;->b:Landroidx/constraintlayout/widget/Group;

    iput-object p3, p0, Lgl/i0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p4, p0, Lgl/i0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p5, p0, Lgl/i0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lgl/i0;->f:Lcom/tn/lib/widget/TnTextView;

    iput-object p7, p0, Lgl/i0;->g:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgl/i0;
    .locals 10

    sget v0, Lcom/transsion/home/R$id;->group_room_info:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Group;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/home/R$id;->ivCover:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/home/R$id;->iv_room_cover:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/home/R$id;->ivVideoPlay:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/home/R$id;->tv_room_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/tn/lib/widget/TnTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/home/R$id;->v_room_info:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v0, Lgl/i0;

    move-object v3, p0

    check-cast v3, Lcom/noober/background/view/BLConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lgl/i0;-><init>(Lcom/noober/background/view/BLConstraintLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroid/view/View;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/i0;
    .locals 2

    sget v0, Lcom/transsion/home/R$layout;->item_adapter_room_entrance_post:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lgl/i0;->a(Landroid/view/View;)Lgl/i0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/noober/background/view/BLConstraintLayout;
    .locals 1

    iget-object v0, p0, Lgl/i0;->a:Lcom/noober/background/view/BLConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgl/i0;->b()Lcom/noober/background/view/BLConstraintLayout;

    move-result-object v0

    return-object v0
.end method
