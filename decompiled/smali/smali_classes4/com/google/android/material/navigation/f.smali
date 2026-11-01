.class public final synthetic Lcom/google/android/material/navigation/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lwa/c;


# direct methods
.method public synthetic constructor <init>(Lwa/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/f;->a:Lwa/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/f;->a:Lwa/c;

    invoke-virtual {v0}, Lwa/c;->e()V

    return-void
.end method
