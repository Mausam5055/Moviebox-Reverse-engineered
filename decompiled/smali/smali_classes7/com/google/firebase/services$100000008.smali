.class Lcom/google/firebase/services$100000008;
.super Ljava/lang/Object;
.source "services.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/services$100000008;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/google/firebase/services$100000008;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 596
    iget-object p1, p0, Lcom/google/firebase/services$100000008;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 597
    iget-object p1, p0, Lcom/google/firebase/services$100000008;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/services;->check(Landroid/content/Context;)V

    return-void
.end method
