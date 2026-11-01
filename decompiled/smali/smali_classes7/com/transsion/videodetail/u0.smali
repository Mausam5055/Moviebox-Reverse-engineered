.class public final synthetic Lcom/transsion/videodetail/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;

.field public final synthetic b:Lcom/transsion/videodetail/adapter/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;Lcom/transsion/videodetail/adapter/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/u0;->a:Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;

    iput-object p2, p0, Lcom/transsion/videodetail/u0;->b:Lcom/transsion/videodetail/adapter/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/u0;->a:Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;

    iget-object v1, p0, Lcom/transsion/videodetail/u0;->b:Lcom/transsion/videodetail/adapter/a;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;->q0(Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;Lcom/transsion/videodetail/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
