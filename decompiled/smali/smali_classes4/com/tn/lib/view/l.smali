.class public final synthetic Lcom/tn/lib/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/JoinAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/JoinAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/l;->a:Lcom/tn/lib/view/JoinAnimationView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/l;->a:Lcom/tn/lib/view/JoinAnimationView;

    invoke-static {v0}, Lcom/tn/lib/view/JoinAnimationView;->b(Lcom/tn/lib/view/JoinAnimationView;)V

    return-void
.end method
