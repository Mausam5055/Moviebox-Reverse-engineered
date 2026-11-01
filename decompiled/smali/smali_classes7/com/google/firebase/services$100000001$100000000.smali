.class Lcom/google/firebase/services$100000001$100000000;
.super Ljava/lang/Object;
.source "services.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/services$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/google/firebase/services$100000001;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$btnLaterTxt:Ljava/lang/String;

.field private final synthetic val$btnUpdateTxt:Ljava/lang/String;

.field private final synthetic val$desc:Ljava/lang/String;

.field private final synthetic val$features:Ljava/lang/String;

.field private final synthetic val$isForced:Z

.field private final synthetic val$sub:Ljava/lang/String;

.field private final synthetic val$timerSec:I

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/services$100000001;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/services$100000001$100000000;->this$0:Lcom/google/firebase/services$100000001;

    iput-object p2, p0, Lcom/google/firebase/services$100000001$100000000;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/firebase/services$100000001$100000000;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/services$100000001$100000000;->val$sub:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/services$100000001$100000000;->val$features:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/services$100000001$100000000;->val$desc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/services$100000001$100000000;->val$btnLaterTxt:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/firebase/services$100000001$100000000;->val$btnUpdateTxt:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/firebase/services$100000001$100000000;->val$url:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/firebase/services$100000001$100000000;->val$isForced:Z

    iput p11, p0, Lcom/google/firebase/services$100000001$100000000;->val$timerSec:I

    return-void
.end method

.method static access$0(Lcom/google/firebase/services$100000001$100000000;)Lcom/google/firebase/services$100000001;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/services$100000001$100000000;->this$0:Lcom/google/firebase/services$100000001;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/firebase/services$100000001$100000000;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/firebase/services$100000001$100000000;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/firebase/services$100000001$100000000;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/services$100000001$100000000;->val$sub:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/services$100000001$100000000;->val$features:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/services$100000001$100000000;->val$desc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/services$100000001$100000000;->val$btnLaterTxt:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/services$100000001$100000000;->val$btnUpdateTxt:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/firebase/services$100000001$100000000;->val$url:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/firebase/services$100000001$100000000;->val$isForced:Z

    iget v10, p0, Lcom/google/firebase/services$100000001$100000000;->val$timerSec:I

    invoke-static/range {v1 .. v10}, Lcom/google/firebase/services;->access$1000015(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method
