.class public final synthetic Lqh/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/expand/SubjectExpandView;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/expand/SubjectExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh/f;->a:Lcom/tn/lib/view/expand/SubjectExpandView;

    iput-object p2, p0, Lqh/f;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqh/f;->a:Lcom/tn/lib/view/expand/SubjectExpandView;

    iget-object v1, p0, Lqh/f;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/tn/lib/view/expand/SubjectExpandView;->b(Lcom/tn/lib/view/expand/SubjectExpandView;Ljava/lang/CharSequence;)V

    return-void
.end method
