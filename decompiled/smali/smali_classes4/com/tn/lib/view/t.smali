.class public final synthetic Lcom/tn/lib/view/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/NoNetworkSmallView;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/t;->a:Lcom/tn/lib/view/NoNetworkSmallView;

    iput-object p2, p0, Lcom/tn/lib/view/t;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/t;->a:Lcom/tn/lib/view/NoNetworkSmallView;

    iget-object v1, p0, Lcom/tn/lib/view/t;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1}, Lcom/tn/lib/view/NoNetworkSmallView;->j(Lcom/tn/lib/view/NoNetworkSmallView;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
