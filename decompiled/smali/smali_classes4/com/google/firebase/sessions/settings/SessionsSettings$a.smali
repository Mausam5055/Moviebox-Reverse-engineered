.class public final Lcom/google/firebase/sessions/settings/SessionsSettings$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/settings/SessionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference2Impl;

    const-string v1, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v2, 0x0

    const-class v3, Lcom/google/firebase/sessions/settings/SessionsSettings$a;

    const-string v4, "dataStore"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->j(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/firebase/sessions/settings/SessionsSettings$a;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/SessionsSettings$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/google/firebase/sessions/settings/SessionsSettings$a;Landroid/content/Context;)Landroidx/datastore/core/f;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/settings/SessionsSettings$a;->b(Landroid/content/Context;)Landroidx/datastore/core/f;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/content/Context;)Landroidx/datastore/core/f;
    .locals 3

    invoke-static {}, Lcom/google/firebase/sessions/settings/SessionsSettings;->a()Lkotlin/properties/ReadOnlyProperty;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/sessions/settings/SessionsSettings$a;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p1, v1}, Lkotlin/properties/ReadOnlyProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/f;

    return-object p1
.end method


# virtual methods
.method public final c()Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 2

    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    invoke-static {v0}, Lcom/google/firebase/l;->a(Lcom/google/firebase/c;)Lcom/google/firebase/f;

    move-result-object v0

    const-class v1, Lcom/google/firebase/sessions/settings/SessionsSettings;

    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Firebase.app[SessionsSettings::class.java]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firebase/sessions/settings/SessionsSettings;

    return-object v0
.end method
