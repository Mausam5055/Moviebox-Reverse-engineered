.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/internal/common/x;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/x;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    iput-wide p2, p0, Lcom/google/firebase/crashlytics/internal/common/t;->b:J

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/t;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t;->a:Lcom/google/firebase/crashlytics/internal/common/x;

    iget-wide v1, p0, Lcom/google/firebase/crashlytics/internal/common/t;->b:J

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/t;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/x;->a(Lcom/google/firebase/crashlytics/internal/common/x;JLjava/lang/String;)V

    return-void
.end method
