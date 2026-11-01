.class public final synthetic Lcom/google/firebase/crashlytics/internal/settings/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/internal/settings/e$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/settings/e$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/d;->a:Lcom/google/firebase/crashlytics/internal/settings/e$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/d;->a:Lcom/google/firebase/crashlytics/internal/settings/e$a;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/e$a;->a(Lcom/google/firebase/crashlytics/internal/settings/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
