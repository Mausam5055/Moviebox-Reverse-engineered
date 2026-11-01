.class Lcom/transsion/startup/pref/anr/ANRError$$;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/startup/pref/anr/ANRError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "$"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;
    }
.end annotation


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRError$$;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/startup/pref/anr/ANRError$$;->_stackTrace:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/transsion/startup/pref/anr/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/startup/pref/anr/ANRError$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/startup/pref/anr/ANRError$$;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/startup/pref/anr/ANRError$$;->_name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/transsion/startup/pref/anr/ANRError$$;)[Ljava/lang/StackTraceElement;
    .locals 0

    iget-object p0, p0, Lcom/transsion/startup/pref/anr/ANRError$$;->_stackTrace:[Ljava/lang/StackTraceElement;

    return-object p0
.end method
