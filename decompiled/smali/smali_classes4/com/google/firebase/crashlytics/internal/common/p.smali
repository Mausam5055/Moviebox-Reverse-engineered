.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/internal/common/x;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/p;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/x;->g(Lcom/google/firebase/crashlytics/internal/common/x;Ljava/lang/Throwable;)V

    return-void
.end method
