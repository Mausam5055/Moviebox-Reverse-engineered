.class public final Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;->a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;->a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    invoke-static {v1}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;->e0(Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> typeMember() --> onFailed() --> \u5f00\u901a\u4f1a\u5458\u5931\u8d25"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;->a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;->f0(Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)V

    return-void
.end method
