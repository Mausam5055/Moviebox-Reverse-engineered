.class public final synthetic Lcom/transsion/wrapperad/view/cardpage/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

.field public final synthetic c:Lcom/transsion/wrapperad/view/cardpage/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/b;->b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/b;->c:Lcom/transsion/wrapperad/view/cardpage/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/b;->b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/b;->c:Lcom/transsion/wrapperad/view/cardpage/f;

    invoke-static {v0, v1, v2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    return-void
.end method
