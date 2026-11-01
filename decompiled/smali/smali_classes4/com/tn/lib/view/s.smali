.class public final synthetic Lcom/tn/lib/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Lth/e;

.field public final synthetic c:Lcom/tn/lib/view/NoNetworkSmallView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lth/e;Lcom/tn/lib/view/NoNetworkSmallView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/s;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/tn/lib/view/s;->b:Lth/e;

    iput-object p3, p0, Lcom/tn/lib/view/s;->c:Lcom/tn/lib/view/NoNetworkSmallView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tn/lib/view/s;->a:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/tn/lib/view/s;->b:Lth/e;

    iget-object v2, p0, Lcom/tn/lib/view/s;->c:Lcom/tn/lib/view/NoNetworkSmallView;

    invoke-static {v0, v1, v2, p1}, Lcom/tn/lib/view/NoNetworkSmallView;->i(Lkotlin/jvm/functions/Function0;Lth/e;Lcom/tn/lib/view/NoNetworkSmallView;Landroid/view/View;)V

    return-void
.end method
