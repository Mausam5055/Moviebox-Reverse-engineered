.class public final Lbq/y;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/constraintlayout/widget/Group;

.field public final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final e:Lbq/b0;

.field public final f:Lbq/c0;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Lcom/noober/background/view/BLTextView;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;

.field public final k:Landroidx/appcompat/widget/AppCompatTextView;

.field public final l:Lcom/tn/lib/view/RoomJoinAnimationView;

.field public final m:Landroid/view/View;

.field public final n:Lcom/noober/background/view/BLView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lbq/b0;Lbq/c0;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/view/RoomJoinAnimationView;Landroid/view/View;Lcom/noober/background/view/BLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbq/y;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lbq/y;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lbq/y;->c:Landroidx/constraintlayout/widget/Group;

    iput-object p4, p0, Lbq/y;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p5, p0, Lbq/y;->e:Lbq/b0;

    iput-object p6, p0, Lbq/y;->f:Lbq/c0;

    iput-object p7, p0, Lbq/y;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Lbq/y;->h:Lcom/noober/background/view/BLTextView;

    iput-object p9, p0, Lbq/y;->i:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p10, p0, Lbq/y;->j:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p11, p0, Lbq/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p12, p0, Lbq/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    iput-object p13, p0, Lbq/y;->m:Landroid/view/View;

    iput-object p14, p0, Lbq/y;->n:Lcom/noober/background/view/BLView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lbq/y;
    .locals 18

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/room/R$id;->fl_new_post_cover:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/room/R$id;->group_new_post:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/room/R$id;->iv_cover:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/room/R$id;->layout_new_post_image:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lbq/b0;->a(Landroid/view/View;)Lbq/b0;

    move-result-object v8

    sget v1, Lcom/transsion/room/R$id;->layout_new_post_video:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lbq/c0;->a(Landroid/view/View;)Lbq/c0;

    move-result-object v9

    sget v1, Lcom/transsion/room/R$id;->tv_member:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/room/R$id;->tv_new_count:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/noober/background/view/BLTextView;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/room/R$id;->tv_new_post_content:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/room/R$id;->tv_tag:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/room/R$id;->tv_title:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/room/R$id;->v_join:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/tn/lib/view/RoomJoinAnimationView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/room/R$id;->v_line:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/room/R$id;->v_new_post_bg:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/noober/background/view/BLView;

    if-eqz v17, :cond_0

    new-instance v1, Lbq/y;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lbq/y;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lbq/b0;Lbq/c0;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/view/RoomJoinAnimationView;Landroid/view/View;Lcom/noober/background/view/BLView;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/y;
    .locals 2

    sget v0, Lcom/transsion/room/R$layout;->item_room_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lbq/y;->a(Landroid/view/View;)Lbq/y;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lbq/y;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbq/y;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
