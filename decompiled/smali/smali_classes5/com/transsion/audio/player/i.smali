.class public final synthetic Lcom/transsion/audio/player/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/player/l;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/player/i;->a:Lcom/transsion/audio/player/l;

    return-void
.end method


# virtual methods
.method public final onInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/player/i;->a:Lcom/transsion/audio/player/l;

    invoke-static {v0, p1}, Lcom/transsion/audio/player/l;->i(Lcom/transsion/audio/player/l;Lcom/aliyun/player/bean/InfoBean;)V

    return-void
.end method
