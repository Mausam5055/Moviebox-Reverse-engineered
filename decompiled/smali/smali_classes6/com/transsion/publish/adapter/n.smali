.class public final synthetic Lcom/transsion/publish/adapter/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/adapter/r;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/n;->a:Lcom/transsion/publish/adapter/r;

    iput-object p2, p0, Lcom/transsion/publish/adapter/n;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/adapter/n;->a:Lcom/transsion/publish/adapter/r;

    iget-object v1, p0, Lcom/transsion/publish/adapter/n;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/adapter/r;->m(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method
