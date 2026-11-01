.class public interface abstract Lcom/transsion/room/api/IAudioApi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/api/IAudioApi$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001b\u0010\u0017J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001eH&\u00a2\u0006\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/room/api/IAudioApi;",
        "",
        "Lcom/transsion/baselib/db/audio/AudioBean;",
        "audio",
        "",
        "needRequest",
        "",
        "d",
        "(Lcom/transsion/baselib/db/audio/AudioBean;Z)V",
        "start",
        "()V",
        "pause",
        "stop",
        "prepare",
        "Lcom/transsion/player/orplayer/f;",
        "listener",
        "addPlayerListener",
        "(Lcom/transsion/player/orplayer/f;)V",
        "removePlayerListener",
        "",
        "e",
        "()J",
        "f",
        "()Z",
        "position",
        "seekTo",
        "(J)V",
        "c",
        "b",
        "(Lcom/transsion/baselib/db/audio/AudioBean;)Z",
        "",
        "audioUrl",
        "a",
        "(Ljava/lang/String;)Z",
        "AudioApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract addPlayerListener(Lcom/transsion/player/orplayer/f;)V
.end method

.method public abstract b(Lcom/transsion/baselib/db/audio/AudioBean;)Z
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V
.end method

.method public abstract e()J
.end method

.method public abstract f()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract removePlayerListener(Lcom/transsion/player/orplayer/f;)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
