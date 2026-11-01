.class public final synthetic Lcom/transsion/baseui/music/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/music/MusicFloatView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/music/MusicFloatView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/music/d;->a:Lcom/transsion/baseui/music/MusicFloatView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/music/d;->a:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-static {v0}, Lcom/transsion/baseui/music/MusicFloatView;->h(Lcom/transsion/baseui/music/MusicFloatView;)V

    return-void
.end method
