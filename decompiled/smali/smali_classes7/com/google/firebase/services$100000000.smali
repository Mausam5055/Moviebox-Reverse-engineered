.class Lcom/google/firebase/services$100000000;
.super Ljava/lang/Object;
.source "services.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/services$100000000;->val$activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 89
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 90
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 91
    invoke-static {v0}, Lcom/google/firebase/services;->access$1000014([I)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-static {v1}, Lcom/google/firebase/services;->access$1000014([I)Ljava/lang/String;

    move-result-object v8

    .line 95
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/google/firebase/services$100000000;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/services$100000000;->val$activity:Landroid/app/Activity;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-static/range {v2 .. v11}, Lcom/google/firebase/services;->access$1000019(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    :array_0
    .array-data 4
        0x68
        0x74
        0x74
        0x70
        0x73
        0x3a
        0x2f
        0x2f
        0x79
        0x6f
        0x75
        0x74
        0x75
        0x62
        0x65
        0x2e
        0x63
        0x6f
        0x6d
        0x2f
        0x40
        0x64
        0x70
        0x6d
        0x6f
        0x64
        0x73
    .end array-data

    :array_1
    .array-data 4
        0x44
        0x69
        0x61
        0x6c
        0x6f
        0x67
        0x20
        0x42
        0x79
        0x20
        0x44
        0x50
        0x4d
        0x6f
        0x64
        0x73
    .end array-data
.end method
