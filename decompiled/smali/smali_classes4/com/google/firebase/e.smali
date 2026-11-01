.class public final synthetic Lcom/google/firebase/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/f$a;


# instance fields
.field public final synthetic a:Lcom/google/firebase/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/e;->a:Lcom/google/firebase/f;

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/e;->a:Lcom/google/firebase/f;

    invoke-static {v0, p1}, Lcom/google/firebase/f;->a(Lcom/google/firebase/f;Z)V

    return-void
.end method
