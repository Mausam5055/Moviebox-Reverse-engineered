.class public final synthetic Lcom/transsion/publish/adapter/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/q;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/q;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, p1}, Lcom/transsion/publish/adapter/r;->p(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/MediaPlayer;)V

    return-void
.end method
