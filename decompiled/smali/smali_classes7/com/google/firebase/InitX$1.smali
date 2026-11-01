.class Lcom/google/firebase/InitX$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field parent:Lcom/google/firebase/InitX;


# direct methods
.method public constructor <init>(Lcom/google/firebase/InitX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/InitX$1;->parent:Lcom/google/firebase/InitX;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/InitX$1;->parent:Lcom/google/firebase/InitX;

    invoke-static {v0}, Lcom/google/firebase/InitX;->access$0(Lcom/google/firebase/InitX;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/services;->check(Landroid/app/Activity;)V

    return-void
.end method
