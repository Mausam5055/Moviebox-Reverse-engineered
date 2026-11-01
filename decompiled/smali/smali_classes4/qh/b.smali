.class public final synthetic Lqh/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/expand/ExpandView;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/expand/ExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh/b;->a:Lcom/tn/lib/view/expand/ExpandView;

    iput-object p2, p0, Lqh/b;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqh/b;->a:Lcom/tn/lib/view/expand/ExpandView;

    iget-object v1, p0, Lqh/b;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/tn/lib/view/expand/ExpandView;->e(Lcom/tn/lib/view/expand/ExpandView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
