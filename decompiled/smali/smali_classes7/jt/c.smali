.class public final synthetic Ljt/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljt/c;->a:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    iput-object p2, p0, Ljt/c;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljt/c;->a:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    iget-object v1, p0, Ljt/c;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->d(Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
