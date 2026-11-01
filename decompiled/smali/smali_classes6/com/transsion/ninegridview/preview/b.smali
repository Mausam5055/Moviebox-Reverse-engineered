.class public final synthetic Lcom/transsion/ninegridview/preview/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/b;->b:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    iput p3, p0, Lcom/transsion/ninegridview/preview/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/b;->b:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    iget v2, p0, Lcom/transsion/ninegridview/preview/b;->c:I

    invoke-static {v0, v1, v2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V

    return-void
.end method
