.class public final synthetic Lcom/transsion/baseui/music/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/music/MusicFloatManager;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/music/b;->a:Lcom/transsion/baseui/music/MusicFloatManager;

    iput-object p2, p0, Lcom/transsion/baseui/music/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/music/b;->a:Lcom/transsion/baseui/music/MusicFloatManager;

    iget-object v1, p0, Lcom/transsion/baseui/music/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager;->a(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
