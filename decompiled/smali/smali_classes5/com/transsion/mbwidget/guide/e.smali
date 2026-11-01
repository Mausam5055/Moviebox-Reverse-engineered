.class public final synthetic Lcom/transsion/mbwidget/guide/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/mbwidget/guide/AddWidgetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mbwidget/guide/AddWidgetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mbwidget/guide/e;->a:Lcom/transsion/mbwidget/guide/AddWidgetDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mbwidget/guide/e;->a:Lcom/transsion/mbwidget/guide/AddWidgetDialog;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/mbwidget/guide/AddWidgetDialog;->j0(Lcom/transsion/mbwidget/guide/AddWidgetDialog;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
