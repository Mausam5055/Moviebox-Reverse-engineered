.class public final synthetic Lcom/transsion/postdetail/ui/fragment/d1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$g;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;


# direct methods
.method public synthetic constructor <init>(FLcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/postdetail/ui/fragment/d1;->a:F

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/d1;->b:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/d1;->a:F

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/d1;->b:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->f1(FLcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method
