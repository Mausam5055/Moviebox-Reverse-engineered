.class public final Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic b:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;->a:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;->b:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_0

    int-to-float p1, p2

    const/16 p2, 0x64

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;->a:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object p3, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;->b:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;

    invoke-static {p3}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->i1(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)J

    move-result-wide v0

    const/16 p3, 0x3e8

    int-to-long v2, p3

    mul-long/2addr v0, v2

    long-to-float p3, v0

    mul-float/2addr p3, p1

    float-to-long v0, p3

    iput-wide v0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;->b:Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;->h1(Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment;)Lcom/transsion/room/api/IAudioApi;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostAudioDetailFragment$b;->a:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-interface {p1, v0, v1}, Lcom/transsion/room/api/IAudioApi;->seekTo(J)V

    :cond_0
    return-void
.end method
