.class public final synthetic Lcom/transsion/videodetail/i0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/SubjectDetailHeaderFragment;

.field public final synthetic b:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/SubjectDetailHeaderFragment;Lcom/google/android/material/imageview/ShapeableImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/i0;->a:Lcom/transsion/videodetail/SubjectDetailHeaderFragment;

    iput-object p2, p0, Lcom/transsion/videodetail/i0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/i0;->a:Lcom/transsion/videodetail/SubjectDetailHeaderFragment;

    iget-object v1, p0, Lcom/transsion/videodetail/i0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/SubjectDetailHeaderFragment;->a0(Lcom/transsion/videodetail/SubjectDetailHeaderFragment;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/view/View;)V

    return-void
.end method
