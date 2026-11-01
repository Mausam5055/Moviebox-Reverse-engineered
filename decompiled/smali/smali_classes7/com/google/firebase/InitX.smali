.class public Lcom/google/firebase/InitX;
.super Ljava/lang/Object;


# instance fields
.field private act:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/InitX;->act:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/firebase/InitX;->act:Landroid/app/Activity;

    invoke-static {p0}, Lcom/google/firebase/services;->check(Landroid/app/Activity;)V

    return-void
.end method
