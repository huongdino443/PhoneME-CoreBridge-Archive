.class public final Lcom/phoneme/corebridge/MainActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;,
        Lcom/phoneme/corebridge/MainActivity$FormItemState;,
        Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;,
        Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;,
        Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;,
        Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;
    }
.end annotation


# static fields
.field private static final FORM_SECTION_CHOICE:I = 0x3

.field private static final FORM_SECTION_CONTENT:I = 0x1

.field private static final FORM_SECTION_CONTROL:I = 0x2

.field private static final FORM_SECTION_NONE:I = 0x0

.field private static final GAME_LIBRARY_PREFS:Ljava/lang/String; = "corebridge_game_library"

.field private static final GAUGE_METADATA:I = -0x3ea

.field private static final ITEM_STYLE_METADATA:I = -0x3ed

.field private static final LOGICAL_HEIGHT:I = 0x280

.field private static final LOGICAL_WIDTH:I = 0x168

.field private static final SAVE_LOG_REQUEST:I = 0xa29

.field private static final SCREEN_KIND_METADATA:I = -0x3ee

.field private static final STORAGE_REQUEST:I = 0x961

.field private static final TAG:Ljava/lang/String; = "PhoneME-CoreBridge"

.field private static final TEXT_FIELD_METADATA:I = -0x3e9


# instance fields
.field private acceptDestinationTextBoxWhileListVisible:Z

.field private activeAlertScreenId:I

.field private activeCommandScreenId:I

.field private activeProgramKey:Ljava/lang/String;

.field private alertUnderlyingNativeListScreen:Z

.field private alertUnderlyingScreenId:I

.field private alertUnderlyingTitle:Ljava/lang/String;

.field private final appIdToProgramKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appSettingsEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

.field private appSettingsFirstLaunch:Z

.field private appSettingsOverlay:Landroid/widget/FrameLayout;

.field private appShellContainer:Landroid/widget/FrameLayout;

.field private applyingFormText:Z

.field private applyingTextBoxText:Z

.field private canvasPresentationDiagnosticCount:I

.field private canvasPresentedForActiveClone:Z

.field private directInstalledSession:Z

.field private final displayableKinds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final explicitFormScreenIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private focusedProgramKey:Ljava/lang/String;

.field private final formChoiceParentByComponent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final formChoiceRows:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final formChoiceRowsCacheByParent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private formCommandBar:Landroid/widget/LinearLayout;

.field private final formEditorsByItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final formItemCacheByParent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/phoneme/corebridge/MainActivity$FormItemState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final formItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/phoneme/corebridge/MainActivity$FormItemState;",
            ">;"
        }
    .end annotation
.end field

.field private formItemsContainer:Landroid/widget/LinearLayout;

.field private formOverlay:Landroid/widget/FrameLayout;

.field private formPanel:Landroid/widget/LinearLayout;

.field private formScreenId:I

.field private formTitleView:Landroid/widget/TextView;

.field private final frameStatusLock:Ljava/lang/Object;

.field private frameStatusUpdatePosted:Z

.field private final frameStatusUpdateRunnable:Ljava/lang/Runnable;

.field private frameTelemetryCount:J

.field private freshRestartAwaitingCanvas:Z

.field private freshRestartProgramKey:Ljava/lang/String;

.field private final freshRestartProgramKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freshRestartTextBoxGuardUntil:J

.field private gameContainer:Landroid/widget/FrameLayout;

.field private gameLibraryDir:Ljava/io/File;

.field private final gameLibraryEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private gameLibraryPreferences:Landroid/content/SharedPreferences;

.field private gameSessionContainer:Landroid/widget/FrameLayout;

.field private gameSessionPresented:Z

.field private gameView:Lcom/phoneme/corebridge/GameSurfaceView;

.field private hostProgramListNavigationArmed:Z

.field private ignoreStaleScreenEventsAfterDestruction:Z

.field private installedAppsContainer:Landroid/widget/LinearLayout;

.field private lastForegroundProgramKey:Ljava/lang/String;

.field private lastFrameStatusUiMillis:J

.field private final lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

.field private lcdUiCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final lcdUiCommandsByScreen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;>;"
        }
    .end annotation
.end field

.field private lcdUiPoller:Ljava/lang/Runnable;

.field private lcdUiPolling:Z

.field private final listChoiceImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final listChoiceRows:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;>;"
        }
    .end annotation
.end field

.field private liveLogFile:Ljava/io/File;

.field private liveLogWriter:Ljava/io/BufferedWriter;

.field private final logBuffer:Ljava/lang/StringBuilder;

.field private final logLock:Ljava/lang/Object;

.field private mainClassView:Landroid/widget/EditText;

.field private final mainHandler:Landroid/os/Handler;

.field private menuButton:Landroid/widget/Button;

.field private nativeListScreen:Z

.field private nativeRuntime:J

.field private pendingFileManager:Z

.field private final pendingFrameLog:Ljava/lang/StringBuilder;

.field private pendingFrameStatus:Ljava/lang/String;

.field private final pendingScreenShownIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTerminalCommandId:I

.field private pendingTerminalProgramKey:Ljava/lang/String;

.field private pendingTextBoxTitle:Ljava/lang/String;

.field private permissionDialogShown:Z

.field private resumeTextBoxAfterProgramList:Z

.field private resumeTextBoxCanvasShown:Z

.field private resumeTextBoxCaret:I

.field private final resumeTextBoxCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;"
        }
    .end annotation
.end field

.field private resumeTextBoxComponentId:I

.field private resumeTextBoxConstraints:I

.field private resumeTextBoxFieldLabel:Ljava/lang/String;

.field private resumeTextBoxItemIndex:I

.field private resumeTextBoxMaxSize:I

.field private resumeTextBoxOriginalCaret:I

.field private resumeTextBoxOriginalValue:Ljava/lang/String;

.field private resumeTextBoxParentId:I

.field private resumeTextBoxProgramKey:Ljava/lang/String;

.field private resumeTextBoxScreenId:I

.field private resumeTextBoxStateKey:Ljava/lang/String;

.field private resumeTextBoxTitle:Ljava/lang/String;

.field private resumeTextBoxValue:Ljava/lang/String;

.field private rootContainer:Landroid/widget/FrameLayout;

.field private final runningProgramKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final screenDetailsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final screenIdToProgramKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFile:Ljava/io/File;

.field private selectedGameScope:Ljava/lang/String;

.field private settingsFilterView:Landroid/widget/CheckBox;

.field private settingsFullscreenView:Landroid/widget/CheckBox;

.field private settingsHeightView:Landroid/widget/EditText;

.field private settingsKeepAspectView:Landroid/widget/CheckBox;

.field private settingsPositionView:Landroid/widget/Button;

.field private settingsPresetView:Landroid/widget/Button;

.field private settingsScaleModeView:Landroid/widget/Button;

.field private settingsScaleValueView:Landroid/widget/TextView;

.field private settingsScaleView:Landroid/widget/SeekBar;

.field private settingsWidthView:Landroid/widget/EditText;

.field private staleTextBoxScreenId:I

.field private statusView:Landroid/widget/TextView;

.field private suppressStaleTextBoxEvents:Z

.field private syntheticTextBoxCommandPending:Z

.field private syntheticTextBoxSourceProgramKey:Ljava/lang/String;

.field private syntheticTextBoxSourceScreenId:I

.field private textBoxActionPending:Z

.field private textBoxCommandBar:Landroid/widget/LinearLayout;

.field private final textBoxCommandSnapshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;"
        }
    .end annotation
.end field

.field private textBoxCommandSnapshotScreenId:I

.field private textBoxComponentId:I

.field private textBoxConstraints:I

.field private textBoxCounterView:Landroid/widget/TextView;

.field private final textBoxCurrentCarets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final textBoxCurrentValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textBoxDraftCaret:I

.field private textBoxDraftValue:Ljava/lang/String;

.field private textBoxEditor:Landroid/widget/EditText;

.field private textBoxEditorDirty:Z

.field private textBoxEditorFocused:Z

.field private textBoxFieldLabel:Ljava/lang/String;

.field private textBoxItemIndex:I

.field private textBoxMaxSize:I

.field private textBoxMetadataPending:Z

.field private textBoxOverlay:Landroid/widget/FrameLayout;

.field private textBoxParentId:I

.field private textBoxPendingCaret:I

.field private textBoxPendingValue:Ljava/lang/String;

.field private final textBoxResumeStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;",
            ">;"
        }
    .end annotation
.end field

.field private textBoxResumeSynthetic:Z

.field private textBoxScreenId:I

.field private textBoxSessionOriginalCaret:I

.field private textBoxSessionOriginalValue:Ljava/lang/String;

.field private textBoxStateKey:Ljava/lang/String;

.field private textBoxTrustedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceProgramKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->logLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKeys:Ljava/util/Set;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalCommandId:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->screenIdToProgramKey:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxComponentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxParentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxItemIndex:I

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxFieldLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxStateKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalValue:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCommands:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formEditorsByItem:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formItemCacheByParent:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRowsCacheByParent:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceParentByComponent:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->screenDetailsById:Ljava/util/Map;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingScreenId:I

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingTitle:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceImages:Ljava/util/Map;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxParentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxItemIndex:I

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusLock:Ljava/lang/Object;

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/phoneme/corebridge/MainActivity$1;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusUpdateRunnable:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommandsByScreen:Ljava/util/Map;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshot:Ljava/util/ArrayList;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshotScreenId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentValues:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentCarets:Ljava/util/Map;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxFieldLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxTrustedValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity;->showAppSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phoneme/corebridge/MainActivity;->applyFormChoiceSelection(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity;->showFormChoicePopup(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/phoneme/corebridge/MainActivity;)I
    .registers 1

    iget p0, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/phoneme/corebridge/MainActivity;)I
    .registers 1

    iget p0, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    return p0
.end method

.method static synthetic access$1800(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->launchInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->selectInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->confirmUninstallInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    return-void
.end method

.method static synthetic access$202(Lcom/phoneme/corebridge/MainActivity;J)J
    .registers 3

    iput-wide p1, p0, Lcom/phoneme/corebridge/MainActivity;->lastFrameStatusUiMillis:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->uninstallInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hideAppSettings()V

    return-void
.end method

.method static synthetic access$2300(Lcom/phoneme/corebridge/MainActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/MainActivity;->appSettingsFirstLaunch:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->applyAppSettingsFromViews()V

    return-void
.end method

.method static synthetic access$2500(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsWidthView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsHeightView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateSettingsScaleLabel()V

    return-void
.end method

.method static synthetic access$2800(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/phoneme/corebridge/MainActivity;Landroid/widget/Button;[Ljava/lang/String;[II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phoneme/corebridge/MainActivity;->showSettingsChoices(Landroid/widget/Button;[Ljava/lang/String;[II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleModeView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$302(Lcom/phoneme/corebridge/MainActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusUpdatePosted:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity;->showInstalledAppMenu(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/phoneme/corebridge/MainActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/phoneme/corebridge/MainActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/phoneme/corebridge/MainActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxCharacterCount()V

    return-void
.end method

.method static synthetic access$3900(Lcom/phoneme/corebridge/MainActivity;)I
    .registers 1

    iget p0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    return p0
.end method

.method static synthetic access$400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/phoneme/corebridge/MainActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/phoneme/corebridge/MainActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/phoneme/corebridge/MainActivity;I)I
    .registers 2

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    return p1
.end method

.method static synthetic access$4400(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/phoneme/corebridge/MainActivity;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/phoneme/corebridge/MainActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/phoneme/corebridge/MainActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/phoneme/corebridge/MainActivity;)Lcom/phoneme/corebridge/GameSurfaceView;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/phoneme/corebridge/MainActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/MainActivity;->applyingFormText:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateLcdUiSoftInputMode()V

    return-void
.end method

.method static synthetic access$5200(Lcom/phoneme/corebridge/MainActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/phoneme/corebridge/MainActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/phoneme/corebridge/MainActivity;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/phoneme/corebridge/MainActivity;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/phoneme/corebridge/MainActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiPolling:Z

    return p0
.end method

.method static synthetic access$5700(Lcom/phoneme/corebridge/MainActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->setGameSessionPresented(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/phoneme/corebridge/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->renderInstalledApps()V

    return-void
.end method

.method static synthetic access$800(Lcom/phoneme/corebridge/MainActivity;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$802(Lcom/phoneme/corebridge/MainActivity;Ljava/io/File;)Ljava/io/File;
    .registers 2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$900(Lcom/phoneme/corebridge/MainActivity;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    return-object p0
.end method

.method private activateCommandScreen(I)V
    .registers 5

    if-gez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommandsByScreen:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommandsByScreen:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI command owner screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method private addFormBackgroundContent(Lcom/phoneme/corebridge/MainActivity$FormItemState;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const/16 v1, 0xb

    const/4 v2, -0x1

    const-string v3, " index="

    if-ne v0, v1, :cond_44

    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form item background spacer id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->itemIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_44
    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_4c

    move-object v0, v1

    goto :goto_52

    :cond_4c
    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_52
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->formDisplayValue(Lcom/phoneme/corebridge/MainActivity$FormItemState;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_59

    goto :goto_5a

    :cond_59
    move-object v1, v4

    :goto_5a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_67

    goto :goto_7e

    :cond_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    move-object v1, v0

    :cond_7f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v4, " type="

    if-eqz v0, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form item background empty id="

    :goto_92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    goto :goto_2e

    :cond_a3
    const/16 v0, 0xe1

    const/16 v5, 0xe9

    const/16 v6, 0xe5

    invoke-static {v6, v0, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/16 v5, 0xf

    invoke-virtual {p0, v1, v5, v0}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v5, v7, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form item background content id="

    goto :goto_92
.end method

.method private addFormChoiceImage(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V
    .registers 6

    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    iget v0, p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    if-ltz v0, :cond_9

    goto :goto_32

    :cond_9
    iget p2, p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    invoke-direct {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->loadListChoiceImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_12

    return-void

    :cond_12
    invoke-direct {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->listChoiceImageView(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private addFormChoicePopupSummary(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phoneme/corebridge/MainActivity$FormItemState;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    :goto_e
    const-string v0, ""

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x7

    if-nez v1, :cond_32

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->formSectionHeading(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1c

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->flatInteractiveBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget-boolean v5, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    if-eqz v5, :cond_62

    goto :goto_74

    :cond_73
    const/4 v4, 0x0

    :goto_74
    if-eqz v4, :cond_79

    invoke-direct {p0, v0, v4}, Lcom/phoneme/corebridge/MainActivity;->addFormChoiceImage(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V

    :cond_79
    if-nez v4, :cond_7e

    const-string v3, "(ch\u01b0a ch\u1ecdn)"

    goto :goto_80

    :cond_7e
    iget-object v3, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    :goto_80
    const/16 v5, 0xe1

    const/16 v6, 0xe9

    const/16 v7, 0xe5

    invoke-static {v7, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {p0, v3, v6, v5}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v4, :cond_a6

    const/4 v1, 0x1

    :cond_a6
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Lcom/phoneme/corebridge/MainActivity;->choiceAccessory(IZ)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x24

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity$4;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p2, 0x2c

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p2

    invoke-direct {p1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addFormChoiceRow(Lcom/phoneme/corebridge/MainActivity$FormItemState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V
    .registers 9

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-direct {p0, v0, p2}, Lcom/phoneme/corebridge/MainActivity;->addFormChoiceImage(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V

    iget-object v2, p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    const/16 v3, 0xe1

    const/16 v4, 0xe9

    const/16 v5, 0xe5

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {p0, v2, v4, v3}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v3, v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    iget-boolean v2, p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    invoke-direct {p0, v1, v2}, Lcom/phoneme/corebridge/MainActivity;->choiceAccessory(IZ)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/phoneme/corebridge/MainActivity$5;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p2, 0x28

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p2

    invoke-direct {p1, v5, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addFormCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V
    .registers 8

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->commandDisplayLabel(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$6;

    invoke-direct {v1, p0, p2}, Lcom/phoneme/corebridge/MainActivity$6;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p3, :cond_20

    const/16 v1, 0x60

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    if-eqz p3, :cond_2b

    const/4 v3, 0x0

    goto :goto_2d

    :cond_2b
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2d
    invoke-direct {p2, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-eqz p3, :cond_39

    const/4 p3, 0x6

    invoke-virtual {p0, p3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_39
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addFormSectionSeparator()V
    .registers 7

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "LCDUI Form section separator"

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method private addGameLibraryEntry(Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 13

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p3, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    const/16 v5, 0xe

    const/4 v6, -0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1a

    invoke-virtual {p0, v7}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5c

    const-string v5, "MIDlet class ch\u01b0a nh\u1eadn di\u1ec7n"

    goto :goto_5e

    :cond_5c
    iget-object v5, p3, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    :goto_5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \u00b7  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, p3, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/phoneme/corebridge/MainActivity;->librarySize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    const v7, -0x333334

    invoke-virtual {p0, v4, v5, v7}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x38

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "Ch\u1ea1y"

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$21;

    invoke-direct {v2, p0, p3, p2}, Lcom/phoneme/corebridge/MainActivity$21;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x48

    invoke-virtual {p0, p3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p3

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p2, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x40

    invoke-virtual {p0, p3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p3

    invoke-direct {p2, v6, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addInstalledAppEntry(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 13

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->flatListRowBackground(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$19;

    invoke-direct {v2, p0, p2}, Lcom/phoneme/corebridge/MainActivity$19;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    const/16 v6, 0xe1

    const/16 v7, 0xe9

    const/16 v8, 0xe5

    invoke-static {v8, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const/16 v7, 0xe

    invoke-virtual {p0, v5, v7, v6}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1a

    invoke-virtual {p0, v7}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_78

    const-string v6, "MIDlet class ch\u01b0a nh\u1eadn di\u1ec7n"

    goto :goto_7a

    :cond_78
    iget-object v6, p2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    :goto_7a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  \u00b7  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->size:J

    invoke-direct {p0, v6, v7}, Lcom/phoneme/corebridge/MainActivity;->librarySize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb0

    const/16 v7, 0xba

    const/16 v9, 0xb4

    invoke-static {v9, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const/16 v7, 0xb

    invoke-virtual {p0, v5, v7, v6}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v2, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x38

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "Kh\u1edfi ch\u1ea1y"

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$20;

    invoke-direct {v2, p0, p2}, Lcom/phoneme/corebridge/MainActivity$20;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x58

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p2, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addOptionsCommandButton(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;)V"
        }
    .end annotation

    const-string v0, "T\u00f9y ch\u1ecdn"

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$22;

    invoke-direct {v1, p0, p2}, Lcom/phoneme/corebridge/MainActivity$22;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p2, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addSettingsSection(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 7

    const/16 v0, 0xa0

    const/16 v1, 0xeb

    const/16 v2, 0x9a

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/16 v1, 0xf

    invoke-virtual {p0, p2, v1, v0}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextBoxCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V
    .registers 8

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->commandDisplayLabel(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$23;

    invoke-direct {v1, p0, p2}, Lcom/phoneme/corebridge/MainActivity$23;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p3, :cond_20

    const/16 v1, 0x60

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    if-eqz p3, :cond_2b

    const/4 v3, 0x0

    goto :goto_2d

    :cond_2b
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2d
    invoke-direct {p2, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-eqz p3, :cond_39

    const/4 p3, 0x6

    invoke-virtual {p0, p3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_39
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextBoxOptionsCommandButton(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;)V"
        }
    .end annotation

    const-string v0, "T\u00f9y ch\u1ecdn"

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$24;

    invoke-direct {v1, p0, p2}, Lcom/phoneme/corebridge/MainActivity$24;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p2, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyAppPresentationSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz v0, :cond_18

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    iget v2, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    iget-boolean v3, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    iget v4, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    iget v5, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    iget v6, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    iget-boolean v7, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->imageFilter:Z

    invoke-virtual/range {v0 .. v7}, Lcom/phoneme/corebridge/GameSurfaceView;->setPresentationOptions(IIZIIIZ)V

    :cond_18
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x1707

    iget-boolean p1, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->fullscreen:Z

    if-eqz p1, :cond_2c

    or-int/lit16 v0, v0, 0x1106

    :cond_2c
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private applyAppSettingsFromViews()V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->appSettingsEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsWidthView:Landroid/widget/EditText;

    const/16 v2, 0x168

    const/4 v3, 0x1

    const/16 v4, 0x1000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/phoneme/corebridge/MainActivity;->settingsInt(Landroid/widget/EditText;III)I

    move-result v1

    iput v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsHeightView:Landroid/widget/EditText;

    const/16 v2, 0x280

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/phoneme/corebridge/MainActivity;->settingsInt(Landroid/widget/EditText;III)I

    move-result v1

    iput v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsKeepAspectView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    iput v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    move v1, v3

    goto :goto_44

    :cond_38
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_44
    iput v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleModeView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_50

    const/4 v1, 0x0

    goto :goto_5c

    :cond_50
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleModeView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_5c
    iput v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsFilterView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->imageFilter:Z

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->settingsFullscreenView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->fullscreen:Z

    iput-boolean v3, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->configured:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->lastUsed:J

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->saveGameLibrary()V

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->applyAppPresentationSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0110\u00e3 l\u01b0u thi\u1ebft l\u1eadp app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canvas="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aspect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method private applyFormChoiceSelection(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phoneme/corebridge/MainActivity$FormItemState;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_82

    if-eqz p2, :cond_82

    if-nez p3, :cond_8

    goto/16 :goto_82

    :cond_8
    iget v0, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    if-eqz v0, :cond_16

    iget v0, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    iget v0, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    :cond_16
    if-eqz p4, :cond_34

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1c
    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    if-eq v0, p3, :cond_1c

    iget v1, v0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    iget v2, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    goto :goto_1c

    :cond_34
    iput-boolean p4, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LCDUI Form choice select component="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " selected="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " imageKey="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/phoneme/corebridge/MainActivity;->sendFormChoiceSelection(Lcom/phoneme/corebridge/MainActivity$FormItemState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V

    :cond_82
    :goto_82
    return-void
.end method

.method private applyTextBoxMetadata(II)V
    .registers 12

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    goto :goto_11

    :cond_9
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v2, :cond_18

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    :goto_1c
    if-gez v2, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_22
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxCharacterCount()V

    iget p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iget p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxParentId:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iget v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxItemIndex:I

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey(IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMetadataPending:Z

    if-eqz v4, :cond_e9

    iget-boolean v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    const-string v5, " valueLength="

    const-string v6, ""

    if-eqz v4, :cond_52

    if-nez v1, :cond_50

    move-object v4, v6

    goto :goto_8b

    :cond_50
    move-object v4, v1

    goto :goto_8b

    :cond_52
    if-nez v1, :cond_56

    move-object v4, v6

    goto :goto_57

    :cond_56
    move-object v4, v1

    :goto_57
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_69

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingValue:Ljava/lang/String;

    if-eqz v7, :cond_69

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_69

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingValue:Ljava/lang/String;

    :cond_69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LCDUI TextBox provisional remap retained peer value oldKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :goto_8b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, p1, v4, v2}, Lcom/phoneme/corebridge/MainActivity;->rememberTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    iput-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LCDUI TextBox metadata key remap old="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " source=provisional"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_e5

    if-eqz p2, :cond_e0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e5

    :cond_e0
    iget p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    invoke-direct {p0, v4, p1}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxEditorFromVm(Ljava/lang/String;I)V

    :cond_e5
    iput-object v6, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingValue:Ljava/lang/String;

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingCaret:I

    :cond_e9
    iput-boolean v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMetadataPending:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez p1, :cond_f0

    return-void

    :cond_f0
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->configureTextBoxEditorInput()V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    if-gez p1, :cond_109

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    :cond_109
    move v5, p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    invoke-virtual/range {v0 .. v5}, Lcom/phoneme/corebridge/GameSurfaceView;->beginTextInput(ILjava/lang/String;III)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxCharacterCount()V

    return-void
.end method

.method private arg3([Ljava/lang/Object;)I
    .registers 4

    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_c

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private armPendingTerminalIdentity(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 6

    if-eqz p1, :cond_9b

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isGameTerminalExitCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_9b

    :cond_a
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->resolveTerminalCommandProgramKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, " type="

    if-eqz v1, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI terminal identity could not be armed commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " runningKeys="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_94

    :cond_4e
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalCommandId:I

    if-ne v1, v3, :cond_5d

    return-void

    :cond_5d
    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalCommandId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI terminal identity armed programKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " screen="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_9b
    :goto_9b
    return-void
.end method

.method private bringTextBoxOverlayToFront()V
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_c
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method private buildUi()V
    .registers 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x12

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v1, v5, v7, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v4, "PhoneME CoreBridge"

    const/16 v5, 0x14

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v5, v7}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x24

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v5, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->gameContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-direct {v4, v0}, Lcom/phoneme/corebridge/GameSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    new-instance v5, Lcom/phoneme/corebridge/MainActivity$25;

    invoke-direct {v5, v0}, Lcom/phoneme/corebridge/MainActivity$25;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/phoneme/corebridge/GameSurfaceView;->setFrameLogListener(Lcom/phoneme/corebridge/GameSurfaceView$FrameLogListener;)V

    iget-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    new-instance v5, Lcom/phoneme/corebridge/MainActivity$26;

    invoke-direct {v5, v0}, Lcom/phoneme/corebridge/MainActivity$26;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/phoneme/corebridge/GameSurfaceView;->setTextInputActionListener(Lcom/phoneme/corebridge/GameSurfaceView$TextInputActionListener;)V

    iget-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    new-instance v5, Lcom/phoneme/corebridge/MainActivity$27;

    invoke-direct {v5, v0}, Lcom/phoneme/corebridge/MainActivity$27;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/phoneme/corebridge/GameSurfaceView;->setTextInputChangeListener(Lcom/phoneme/corebridge/GameSurfaceView$TextInputChangeListener;)V

    iget-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    const/16 v5, 0x168

    const/16 v9, 0x280

    invoke-virtual {v4, v5, v9}, Lcom/phoneme/corebridge/GameSurfaceView;->setLogicalSize(II)V

    iget-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->gameContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0xe1

    const/16 v9, 0xe9

    const/16 v10, 0xe5

    invoke-static {v10, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const-string v9, "Qu\u1ea3n l\u00fd \u1ee9ng d\u1ee5ng"

    const/16 v10, 0x10

    invoke-virtual {v0, v9, v10, v5}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/phoneme/corebridge/MainActivity;->installedAppsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v8, v10, v11, v9, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x1a

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v0, v12}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v4, v5, v11, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v5, 0xd

    const v11, -0x333334

    const-string v13, "Ch\u01b0a ch\u1ecdn game."

    invoke-virtual {v0, v13, v5, v11}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x2c

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    invoke-direct {v11, v7, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v11, "Nh\u1eadp JAR/JAD"

    invoke-virtual {v0, v11}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    new-instance v14, Lcom/phoneme/corebridge/MainActivity$28;

    invoke-direct {v14, v0}, Lcom/phoneme/corebridge/MainActivity$28;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x28

    invoke-virtual {v0, v15}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v14, v9, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "Th\u01b0 vi\u1ec7n game"

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    new-instance v11, Lcom/phoneme/corebridge/MainActivity$29;

    invoke-direct {v11, v0}, Lcom/phoneme/corebridge/MainActivity$29;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v15}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    invoke-direct {v11, v9, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "Kh\u1edfi ch\u1ea1y"

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    new-instance v11, Lcom/phoneme/corebridge/MainActivity$30;

    invoke-direct {v11, v0}, Lcom/phoneme/corebridge/MainActivity$30;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v15}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    invoke-direct {v11, v9, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {v6, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    const-string v6, "MIDlet main class t\u1ef1 nh\u1eadn di\u1ec7n t\u1eeb manifest"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v0, v12}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v12}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v5, v11, v13, v6, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->flatFieldBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x2a

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v5, "Sao ch\u00e9p log"

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lcom/phoneme/corebridge/MainActivity$31;

    invoke-direct {v6, v0}, Lcom/phoneme/corebridge/MainActivity$31;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v15}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {v6, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "T\u1ea1o file log"

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lcom/phoneme/corebridge/MainActivity$32;

    invoke-direct {v6, v0}, Lcom/phoneme/corebridge/MainActivity$32;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v15}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {v6, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v15}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xd0

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v2, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->appShellContainer:Landroid/widget/FrameLayout;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->gameSessionContainer:Landroid/widget/FrameLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameContainer:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v3, "\u2630"

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->menuButton:Landroid/widget/Button;

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$64;

    invoke-direct {v4, v0}, Lcom/phoneme/corebridge/MainActivity$64;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x35

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v6, v0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v9, v0, Lcom/phoneme/corebridge/MainActivity;->gameSessionPresented:Z

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->setContentView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->renderInstalledApps()V

    return-void
.end method

.method private captureTextBoxResumeState()V
    .registers 15

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    const/4 v1, 0x0

    if-ltz v0, :cond_197

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-ltz v0, :cond_197

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_197

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_197

    :cond_15
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_1c

    move-object v0, v2

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v0, "LCDUI TextBox snapshot skipped; active clone key is empty"

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    return-void

    :cond_2a
    new-instance v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;

    invoke-direct {v3, v0}, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->componentId:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxParentId:I

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->parentId:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxItemIndex:I

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->itemIndex:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->maxSize:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->constraints:I

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v4, :cond_4e

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    goto :goto_52

    :cond_4e
    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    :goto_52
    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    iget v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    if-gez v4, :cond_5c

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    :cond_5c
    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v4, :cond_66

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    if-nez v4, :cond_6e

    move-object v4, v2

    goto :goto_6e

    :cond_66
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6e
    :goto_6e
    iput-object v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->value:Ljava/lang/String;

    iget v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    iget-object v5, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    if-nez v4, :cond_87

    move-object v4, v2

    :cond_87
    iput-object v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalValue:Ljava/lang/String;

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    iget-object v5, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalValue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalCaret:I

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    if-nez v4, :cond_a0

    move-object v4, v2

    :cond_a0
    iput-object v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxFieldLabel:Ljava/lang/String;

    if-nez v4, :cond_a7

    move-object v4, v2

    :cond_a7
    iput-object v4, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->fieldLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    if-eqz v4, :cond_ae

    move-object v2, v4

    :cond_ae
    iput-object v2, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->stateKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->visibleTextBoxCommands()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget-object v5, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->commands:Ljava/util/ArrayList;

    new-instance v13, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v7, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    iget-object v8, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    iget-object v9, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    iget v10, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    iget v11, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->priority:I

    iget v12, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b8

    :cond_dc
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCanvasShown:Z

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->componentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxComponentId:I

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->parentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxParentId:I

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->itemIndex:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxItemIndex:I

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->maxSize:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxMaxSize:I

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->constraints:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxConstraints:I

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCaret:I

    iget-object v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->value:Ljava/lang/String;

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    iget-object v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalValue:Ljava/lang/String;

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalCaret:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalCaret:I

    iget-object v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxTitle:Ljava/lang/String;

    iget-object v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->fieldLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxFieldLabel:Ljava/lang/String;

    iget-object v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->stateKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxStateKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    iget v1, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCommands:Ljava/util/ArrayList;

    iget-object v2, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->commands:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI TextBox resume snapshot saved item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->componentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valueLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " commands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->commands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " programKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_197
    :goto_197
    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    return-void
.end method

.method private choiceAccessory(IZ)Landroid/view/View;
    .registers 8

    const/4 v0, 0x1

    const-string v1, "\u0110\u00e3 ch\u1ecdn"

    const-string v2, "Ch\u01b0a ch\u1ecdn"

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-ne p1, v0, :cond_3c

    new-instance p1, Landroid/widget/CheckBox;

    invoke-direct {p1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->choiceControlTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setGravity(I)V

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setMinWidth(I)V

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setMinimumWidth(I)V

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setMinHeight(I)V

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setMinimumHeight(I)V

    if-eqz p2, :cond_37

    goto :goto_38

    :cond_37
    move-object v1, v2

    :goto_38
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_3c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_63

    const/16 p1, 0xc3

    const/16 p2, 0xff

    const/16 v0, 0xb9

    invoke-static {v0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const-string p2, "\u203a"

    const/16 v0, 0x16

    invoke-virtual {p0, p2, v0, p1}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    const-string p2, "M\u1edf danh s\u00e1ch l\u1ef1a ch\u1ecdn"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_63
    new-instance p1, Landroid/widget/RadioButton;

    invoke-direct {p1, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->choiceControlTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setFocusable(Z)V

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setGravity(I)V

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setBackgroundColor(I)V

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/RadioButton;->setPadding(IIII)V

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setMinWidth(I)V

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setMinimumWidth(I)V

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setMinHeight(I)V

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setMinimumHeight(I)V

    if-eqz p2, :cond_90

    goto :goto_91

    :cond_90
    move-object v1, v2

    :goto_91
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private choiceControlTint()Landroid/content/res/ColorStateList;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v2, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0xff

    const/16 v3, 0xb9

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/16 v2, 0x96

    const/16 v3, 0xa1

    const/16 v4, 0x9c

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private clearFreshRestartGuard()V
    .registers 3

    const-string v0, ""

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartAwaitingCanvas:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartTextBoxGuardUntil:J

    return-void
.end method

.method private clearListChoiceRow(II)V
    .registers 7

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_2f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v3, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    if-ne v3, p1, :cond_2c

    if-ltz p2, :cond_29

    iget v2, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    if-ne v2, p2, :cond_2c

    :cond_29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2f
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    return-void
.end method

.method private clearPendingTerminalIdentity(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_40

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI pending terminal identity cleared programKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalCommandId:I

    :cond_40
    :goto_40
    return-void
.end method

.method private clearTextBoxResumeState()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCanvasShown:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxComponentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxParentId:I

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxItemIndex:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxMaxSize:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxConstraints:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCaret:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalCaret:I

    const-string v2, ""

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxFieldLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxStateKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCommands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceProgramKey:Ljava/lang/String;

    return-void
.end method

.method private closeLiveLog()V
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1f

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1f
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_2c
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    goto :goto_34

    :catchall_2a
    move-exception v1

    goto :goto_37

    :catch_2c
    move-exception v1

    :try_start_2d
    const-string v2, "PhoneME-CoreBridge"

    const-string v3, "Kh\u00f4ng \u0111\u00f3ng \u0111\u01b0\u1ee3c file log phi\u00ean"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    :goto_34
    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    return-void

    :goto_37
    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    throw v1
.end method

.method private commandForId(I)Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;
    .registers 5

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->visibleTextBoxCommands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    if-ne v2, p1, :cond_8

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method private commandOwnerScreenForEvent()I
    .registers 3

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    if-lez v0, :cond_9

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-ne v1, v0, :cond_9

    return v0

    :cond_9
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    if-lez v0, :cond_e

    return v0

    :cond_e
    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-lez v0, :cond_17

    return v0

    :cond_17
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    return v0
.end method

.method private commitTextBoxText()V
    .registers 6

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    if-ltz v0, :cond_2e

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v0, :cond_11

    goto :goto_2e

    :cond_11
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_1d

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    :cond_1d
    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiSetText(JILjava/lang/String;I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private configureNativeRuntime()V
    .registers 6

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-string v0, "L\u1ed6I: native runtime kh\u00f4ng kh\u1edfi t\u1ea1o \u0111\u01b0\u1ee3c."

    goto :goto_36

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "corebridge-runtime"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_3a

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u1ed6I: kh\u00f4ng t\u1ea1o \u0111\u01b0\u1ee3c runtime home: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_3a
    :goto_3a
    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeConfigure(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeConfigure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " home="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java log file="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLogFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native log file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_a7
    if-eqz v1, :cond_ac

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->appendNativeError()V

    :cond_ac
    return-void
.end method

.method private configureTextBoxEditorInput()V
    .registers 7

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    :try_start_a
    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    invoke-direct {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->inputTypeFor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    const/4 v3, 0x0

    if-nez v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v3

    :goto_1e
    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_36

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    if-lez v0, :cond_4f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_56

    :cond_4f
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    new-array v2, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V
    :try_end_56
    .catchall {:try_start_a .. :try_end_56} :catchall_59

    :goto_56
    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    return-void

    :catchall_59
    move-exception v0

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    throw v0
.end method

.method private confirmUninstallInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "G\u1ee1 c\u00e0i \u0111\u1eb7t"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "G\u1ee1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kh\u1ecfi qu\u1ea3n l\u00fd \u1ee9ng d\u1ee5ng?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "H\u1ee7y"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/phoneme/corebridge/MainActivity$10;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private copyGameFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Kh\u00f4ng t\u1ea1o \u0111\u01b0\u1ee3c th\u01b0 m\u1ee5c l\u01b0u game"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    :goto_1b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const p2, 0x8000

    :try_start_29
    new-array p2, p2, [B

    :goto_2b
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_40

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_44

    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception p2

    :goto_3a
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception p1

    :goto_3f
    return-void

    :cond_40
    :try_start_40
    invoke-virtual {p1, p2, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_2b

    :catchall_44
    move-exception p2

    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception p1

    :goto_4f
    throw p2
.end method

.method private currentChoiceRows()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private currentTextBoxScreenId()I
    .registers 2

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    return v0
.end method

.method private deferUnknownScreenShown(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI SCREEN_SHOWN deferred until screen-kind metadata id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/phoneme/corebridge/MainActivity$34;-><init>(Lcom/phoneme/corebridge/MainActivity;ILjava/lang/String;)V

    const-wide/16 p1, 0xa0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dropTextBoxResumeState(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_42

    :cond_9
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox resume record dropped programKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_37
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    :cond_42
    :goto_42
    return-void
.end method

.method private effectiveTextBoxConstraints(Ljava/lang/String;I)I
    .registers 5

    const/high16 v0, 0x10000

    and-int v1, p2, v0

    if-eqz v1, :cond_7

    return p2

    :cond_7
    if-nez p1, :cond_c

    const-string p1, ""

    goto :goto_12

    :cond_c
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    const-string v1, "password"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "m\u1eadt kh\u1ea9u"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "mat khau"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "pass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "passcode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "pin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    :cond_42
    or-int/2addr p2, v0

    :cond_43
    return p2
.end method

.method private enqueueFrameStatus(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameStatus:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/phoneme/corebridge/MainActivity;->lastFrameStatusUiMillis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xfa

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusUpdatePosted:Z

    if-eqz p1, :cond_1b

    monitor-exit v0

    return-void

    :cond_1b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusUpdatePosted:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->frameStatusUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private ensureFormOverlay()V
    .registers 13

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x12

    const/16 v2, 0x16

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v2, v6, v1, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0xe1

    const/16 v2, 0xe9

    const/16 v6, 0xe5

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const-string v2, ""

    const/16 v6, 0x15

    invoke-virtual {p0, v2, v6, v1}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v1, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/high16 v7, 0x1000000

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v7, v9, v10, v11, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v7, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x44

    const/16 v7, 0x4c

    const/16 v10, 0x46

    invoke-static {v10, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v5, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v1, v9, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ensureTextBoxOverlay()V
    .registers 14

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x16

    const/16 v4, 0x12

    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/16 v6, 0xe1

    const/16 v7, 0xe9

    const/16 v9, 0xe5

    invoke-static {v9, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/16 v6, 0x9a

    const/16 v7, 0x94

    const/16 v9, 0xa0

    invoke-static {v6, v7, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/16 v11, 0x33

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/16 v11, 0xe

    invoke-virtual {p0, v11}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v5, v11, v12, v4, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->flatFieldBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/high16 v4, 0x1000000

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$35;

    invoke-direct {v4, p0}, Lcom/phoneme/corebridge/MainActivity$35;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$36;

    invoke-direct {v4, p0}, Lcom/phoneme/corebridge/MainActivity$36;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$37;

    invoke-direct {v4, p0}, Lcom/phoneme/corebridge/MainActivity$37;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$38;

    invoke-direct {v4, p0}, Lcom/phoneme/corebridge/MainActivity$38;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    invoke-direct {v4, v8, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xc

    invoke-static {v6, v7, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {p0, v10, v2, v4}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCounterView:Landroid/widget/TextView;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v2, v5, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCounterView:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x1a

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v1, v4, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandBar:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    invoke-direct {v2, v8, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_156

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_156
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxCharacterCount()V

    return-void
.end method

.method private static extractClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    return-object v0

    :cond_10
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v0

    :cond_20
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private finalizeProgramListArrival()V
    .registers 9

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->isRunningProgramKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LCDUI Program List arrived while terminal pending; terminalizing programKey="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " commandId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalCommandId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const-string v3, "pending game Exit before destruction event"

    invoke-virtual {p0, v2, v4, v3}, Lcom/phoneme/corebridge/MainActivity;->terminalizeCloneHostState(Ljava/lang/String;ILjava/lang/String;)V

    move v2, v6

    goto :goto_46

    :cond_38
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "pending key no longer running before List arrival"

    invoke-direct {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->clearPendingTerminalIdentity(Ljava/lang/String;)V

    :cond_45
    move v2, v5

    :goto_46
    if-nez v2, :cond_a7

    if-nez v0, :cond_a7

    if-eqz v1, :cond_58

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_58

    :cond_55
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    :goto_5a
    iget-boolean v3, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    if-eqz v3, :cond_83

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_83

    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI unarmed Canvas->List treated as game Exit; terminalizing programKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const-string v2, "unarmed Canvas->List game Exit"

    invoke-virtual {p0, v0, v4, v2}, Lcom/phoneme/corebridge/MainActivity;->terminalizeCloneHostState(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a2

    :cond_83
    :goto_83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCDUI List arrival was not an armed hide or presented Canvas Exit; no terminal cleanup canvasPresented="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v6, v2

    :goto_a2
    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    move v2, v6

    :cond_a7
    if-eqz v1, :cond_b5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b2

    goto :goto_b5

    :cond_b2
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    goto :goto_b7

    :cond_b5
    :goto_b5
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    :goto_b7
    if-nez v2, :cond_f4

    if-eqz v0, :cond_eb

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c2

    goto :goto_eb

    :cond_c2
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Program List arrived from hide/suspend; clone remains background programKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source=host runningKeys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_ed

    :cond_eb
    :goto_eb
    const-string v1, "LCDUI hide/suspend arrived without active programKey"

    :goto_ed
    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    :cond_f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Program List arrived after terminalized game Exit; clone remains stopped programKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runningKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    return-void
.end method

.method private findCancelCommandId()I
    .registers 9

    const-string v0, "cancel"

    const-string v1, "back"

    const-string v2, "h\u1ee7y"

    const-string v3, "hu\u1ef7"

    const-string v4, "tho\u00e1t"

    const-string v5, "exit"

    const-string v6, "no"

    const-string v7, "kh\u00f4ng"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->findCommand([Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    return v0

    :cond_1b
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->visibleTextBoxCommands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_39

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    :cond_39
    iget v0, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    return v0

    :cond_3c
    const/4 v0, -0x1

    return v0
.end method

.method private varargs findCommand([Ljava/lang/String;)I
    .registers 8

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->visibleTextBoxCommands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v3, :cond_8

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget p1, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    return p1

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_47
    const/4 p1, -0x1

    return p1
.end method

.method private findFocusedRow()Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->programKey(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object v1

    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private findGameLibraryEntry(Ljava/lang/String;)Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_25

    :cond_a
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v3, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    :cond_25
    :goto_25
    return-object v0
.end method

.method private findListItemCommandId()I
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    if-nez v2, :cond_6

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    iget v0, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    return v0

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private findNativeBackCommand()Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v4, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    if-nez v4, :cond_a

    iget v4, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    invoke-direct {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->negativeSoftKeyRank(I)I

    move-result v4

    if-ltz v4, :cond_a

    if-ge v4, v2, :cond_a

    move-object v1, v3

    move v2, v4

    goto :goto_a

    :cond_27
    return-object v1
.end method

.method private finishSyntheticTextBoxHandoff(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceProgramKey:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCanvasShown:Z

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_1c

    :cond_18
    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dropTextBoxResumeState(Ljava/lang/String;)V

    goto :goto_1f

    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    :goto_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI synthetic TextBox handoff completed on authoritative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " sourceScreen="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " destination TextBox events accepted"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method private finishSyntheticTextBoxHandoffOnCanvas()V
    .registers 2

    const-string v0, "Canvas"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->finishSyntheticTextBoxHandoff(Ljava/lang/String;)V

    return-void
.end method

.method private flatButtonBackground()Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x2b

    const/16 v2, 0x32

    const/16 v3, 0x2c

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x59

    const/16 v3, 0x62

    const/16 v4, 0x5b

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private flatFieldBackground()Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x1e

    const/16 v2, 0x22

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x4c

    const/16 v3, 0x54

    const/16 v4, 0x4e

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private flatInteractiveBackground()Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x1b

    const/16 v2, 0x1f

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x3c

    const/16 v3, 0x44

    const/16 v4, 0x3e

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private flatListRowBackground(Z)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz p1, :cond_27

    const/16 p1, 0x39

    const/16 v1, 0x46

    const/16 v2, 0x36

    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p1

    const/16 v1, 0x8f

    const/16 v2, 0xc4

    const/16 v3, 0x84

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_2b

    :cond_27
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_2b
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private formChoiceMode(Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    return p1

    :cond_13
    :goto_13
    const/4 p1, -0x1

    return p1
.end method

.method private formDisplayValue(Lcom/phoneme/corebridge/MainActivity$FormItemState;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_2c

    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_2c

    :cond_7
    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->constraints:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    return-object p1

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_17
    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    :goto_2c
    const-string p1, ""

    return-object p1
.end method

.method private formSectionHeading(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    const/16 v0, 0xc3

    const/16 v1, 0xff

    const/16 v2, 0xb9

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1, v0}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object p1
.end method

.method private formSectionKind(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phoneme/corebridge/MainActivity$FormItemState;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    const/4 p1, 0x3

    return p1

    :cond_e
    iget p2, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const/4 v0, 0x6

    if-eq p2, v0, :cond_29

    iget p2, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const/4 v0, 0x7

    if-eq p2, v0, :cond_29

    iget p2, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const/16 v0, 0xd

    if-eq p2, v0, :cond_29

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isFormInteractiveRowType(I)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x1

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x2

    return p1
.end method

.method private fullLogText()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->logLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_142

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    :try_start_8
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_20

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_20
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_25} :catch_26
    .catchall {:try_start_8 .. :try_end_25} :catchall_142

    goto :goto_2e

    :catch_26
    move-exception v1

    :try_start_27
    const-string v3, "PhoneME-CoreBridge"

    const-string v4, "Kh\u00f4ng flush \u0111\u01b0\u1ee3c Java log"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_142

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeFlushDebugLog()V

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneME CoreBridge full diagnostic log\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "exportedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->now()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "package=com.phoneme.corebridge\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "--- Java/UI persistent log ---\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    :cond_6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_ee

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v1

    move v7, v2

    :goto_83
    if-ge v7, v6, :cond_ad

    aget-object v8, v1, v7

    if-eqz v8, :cond_aa

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "corebridge-session-recovered-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    :cond_ad
    new-instance v1, Lcom/phoneme/corebridge/MainActivity$39;

    invoke-direct {v1, p0}, Lcom/phoneme/corebridge/MainActivity$39;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_bf
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_ee

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_eb

    const-string v7, "\n--- Recovered previous Java/UI log: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " ---\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_eb
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    :cond_ee
    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_f7

    const-string v1, ""

    goto :goto_fb

    :cond_f7
    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLogFilePath()Ljava/lang/String;

    move-result-object v1

    :goto_fb
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_103

    const/4 v1, 0x0

    goto :goto_109

    :cond_103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_109
    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11d

    const-string v2, "\n--- Native persistent log ---\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_130

    :cond_11d
    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_130

    const-string v1, "\n--- Native diagnostic snapshot ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeDebugLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_130
    :goto_130
    const-string v1, "\n--- Runtime snapshot ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->runtimeSnapshot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_142
    move-exception v1

    :try_start_143
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    throw v1
.end method

.method private handleSyntheticTextBoxCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 14

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isCancelCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v8

    if-nez p1, :cond_8

    const/4 v0, -0x1

    goto :goto_a

    :cond_8
    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    :goto_a
    move v7, v0

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_13

    move-object v9, v1

    goto :goto_14

    :cond_13
    move-object v9, v0

    :goto_14
    if-eqz v8, :cond_1f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    if-nez v0, :cond_1b

    move-object v0, v1

    :cond_1b
    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    :cond_1d
    :goto_1d
    move-object v5, v0

    goto :goto_40

    :cond_1f
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    goto :goto_2e

    :cond_26
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v2, :cond_35

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    goto :goto_39

    :cond_35
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    :goto_39
    if-gez v2, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1d

    :goto_40
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-wide v3, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    iget v10, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    invoke-virtual {p0, v9, v5, v6}, Lcom/phoneme/corebridge/MainActivity;->rememberTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z

    iget-object v11, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz v11, :cond_5e

    invoke-virtual {v11, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LCDUI synthetic TextBox command request id="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " label="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_77

    iget-object v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    :cond_77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cancel="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " item="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " valueLength="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long p1, v3, v1

    if-eqz p1, :cond_fa

    if-ltz v10, :cond_fa

    if-gez v7, :cond_af

    goto :goto_fa

    :cond_af
    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    iget p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    goto :goto_c3

    :cond_c0
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    goto :goto_c5

    :cond_c3
    :goto_c3
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    :goto_c5
    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceProgramKey:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LCDUI synthetic TextBox handoff armed sourceScreen="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " sourceProgramKey="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceProgramKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/phoneme/corebridge/MainActivity$40;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v3

    move v4, v10

    invoke-direct/range {v0 .. v9}, Lcom/phoneme/corebridge/MainActivity$40;-><init>(Lcom/phoneme/corebridge/MainActivity;JILjava/lang/String;IIZLjava/lang/String;)V

    invoke-interface {p1, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_fa
    :goto_fa
    invoke-virtual {p0, v8, v9, v5, v6}, Lcom/phoneme/corebridge/MainActivity;->completeSyntheticTextBoxCommand(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private hasFocusedFormEditor()Z
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formEditorsByItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private hasStoragePermission()Z
    .registers 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private hideAppSettings()V
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->appSettingsOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->appSettingsOverlay:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->appSettingsEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->appSettingsFirstLaunch:Z

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsWidthView:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsHeightView:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsKeepAspectView:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleValueView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsPresetView:Landroid/widget/Button;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleModeView:Landroid/widget/Button;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsFilterView:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsFullscreenView:Landroid/widget/CheckBox;

    return-void
.end method

.method private hideFormOverlay()V
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_10
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_17
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateLcdUiSoftInputMode()V

    return-void
.end method

.method private hideTextBoxOverlay(Z)V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->commitTextBoxText()V

    :cond_c
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_22
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/phoneme/corebridge/GameSurfaceView;->endTextInput()V

    :cond_29
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateLcdUiSoftInputMode()V

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz p1, :cond_3f

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_3f
    const/4 p1, -0x1

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxParentId:I

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxItemIndex:I

    const-string v3, ""

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxFieldLabel:Ljava/lang/String;

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxTrustedValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorFocused:Z

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMetadataPending:Z

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingValue:Ljava/lang/String;

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingCaret:I

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v3, :cond_76

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_76

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_76

    invoke-direct {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    goto :goto_7b

    :cond_76
    if-nez v0, :cond_7b

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshotScreenId:I

    return-void
.end method

.method private initializeGameLibrary()V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "game-library"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_18
    const-string v0, "corebridge_game_library"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->loadGameLibrary()V

    return-void
.end method

.method private inputTypeFor(I)I
    .registers 6

    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    move v2, v1

    goto :goto_22

    :cond_9
    const/4 v2, 0x3

    if-eq v0, v2, :cond_22

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    const/16 v2, 0x21

    goto :goto_22

    :cond_12
    const/4 v2, 0x4

    if-ne v0, v2, :cond_18

    const/16 v2, 0x11

    goto :goto_22

    :cond_18
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1e

    const/16 v0, 0x2002

    goto :goto_21

    :cond_1e
    const v0, 0x20001

    :goto_21
    move v2, v0

    :cond_22
    :goto_22
    const/high16 v0, 0x80000

    and-int v3, p1, v0

    if-nez v3, :cond_2d

    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_2e

    :cond_2d
    or-int/2addr v2, v0

    :cond_2e
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_36

    or-int/lit16 v2, v2, 0x2000

    goto :goto_3d

    :cond_36
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3d

    or-int/lit16 v2, v2, 0x4000

    :cond_3d
    :goto_3d
    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-eqz p1, :cond_4c

    and-int/lit8 p1, v2, 0xf

    if-ne p1, v1, :cond_49

    const/16 p1, 0x12

    goto :goto_4b

    :cond_49
    const/16 p1, 0x81

    :goto_4b
    return p1

    :cond_4c
    return v2
.end method

.method private installCrashHandler()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$41;

    invoke-direct {v1, p0, v0}, Lcom/phoneme/corebridge/MainActivity$41;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private static intValue(Ljava/lang/Object;)I
    .registers 2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private isAlertComponentType(I)Z
    .registers 3

    const/16 v0, 0x10

    if-lt p1, v0, :cond_a

    const/16 v0, 0x15

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private isCancelCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_b

    return v3

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cancel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "h\u1ee7y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "hu\u1ef7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "back"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "quay l\u1ea1i"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "tho\u00e1t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5d

    :cond_5c
    move v0, v3

    :cond_5d
    return v0
.end method

.method private isFormBackgroundItemType(I)Z
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/16 v0, 0x8

    if-eq p1, v0, :cond_12

    const/16 v0, 0xb

    if-eq p1, v0, :cond_12

    const/16 v0, 0xc

    if-ne p1, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x1

    :goto_13
    return p1
.end method

.method private isFormChoiceItemType(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method private isFormInteractiveRowType(I)Z
    .registers 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_16

    const/16 v0, 0x9

    if-eq p1, v0, :cond_16

    const/16 v0, 0xa

    if-eq p1, v0, :cond_16

    const/16 v0, 0xd

    if-eq p1, v0, :cond_16

    const/16 v0, 0xe

    if-ne p1, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    return p1
.end method

.method private isFreshRestartTextBoxEvent(I)Z
    .registers 8

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5f

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    if-ltz v0, :cond_16

    if-ne p1, v0, :cond_21

    :cond_16
    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartAwaitingCanvas:Z

    if-nez v0, :cond_2f

    iget-wide v4, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartTextBoxGuardUntil:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_21

    goto :goto_2f

    :cond_21
    const-string p1, ""

    iput-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartAwaitingCanvas:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartTextBoxGuardUntil:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    return v1

    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI stale TextBox ignored during fresh clone restart id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " programKey="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " awaitingCanvas="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartAwaitingCanvas:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_5f
    :goto_5f
    return v1
.end method

.method private isGameTerminalExitCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_14

    :cond_e
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isProgramListCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    return v0

    :cond_15
    iget-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    if-gtz v1, :cond_1e

    return v0

    :cond_1e
    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_25

    return v3

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x111

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea5

    const/16 v2, 0x61

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea9

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1eab

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ead

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xe1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xe0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xe3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "thoat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    const-string v1, "exit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    const-string v1, "quit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    const-string v1, "end game"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    const-string v1, "ket thuc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b9

    :cond_b8
    move v0, v3

    :cond_b9
    return v0
.end method

.method private isHostRunCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    if-nez v0, :cond_3f

    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_12

    goto :goto_3f

    :cond_12
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->normalizedLcdUiCommandLabel(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "run"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "mo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3f

    :cond_3e
    const/4 v1, 0x1

    :cond_3f
    :goto_3f
    return v1
.end method

.method private isHostStopCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    if-eqz p1, :cond_36

    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    if-nez v0, :cond_36

    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_12

    goto :goto_36

    :cond_12
    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_19

    return v3

    :cond_19
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->normalizedLcdUiCommandLabel(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dung"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "ket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_35
    move v1, v3

    :cond_36
    :goto_36
    return v1
.end method

.method private isLikelyTextFieldPlaceholder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    return v0

    :cond_11
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_73

    const-string v1, "\u2026"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_73

    :cond_29
    const-string p1, "enter "

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "input "

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "search "

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "nh\u1eadp "

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "nhap "

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "keywords to search"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "t\u1eeb kh\u00f3a"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "tu khoa"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_72

    :cond_71
    move v0, v2

    :cond_72
    return v0

    :cond_73
    :goto_73
    return v2
.end method

.method private isListExitCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    if-eqz p1, :cond_4d

    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    if-eqz v0, :cond_c

    goto :goto_4d

    :cond_c
    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v2, :cond_13

    return v3

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tho\u00e1t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "program list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    :cond_4c
    move v1, v3

    :cond_4d
    :goto_4d
    return v1
.end method

.method private isProgramListCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x111

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea5

    const/16 v2, 0x61

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea9

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1eab

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ead

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xe1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xe0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xe3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ea1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v1, "program list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "programs list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "danh sach chuong trinh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "danh sach ung dung"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    :cond_8b
    const/4 v0, 0x1

    :cond_8c
    return v0
.end method

.method private isResumedTextBoxEvent(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCanvasShown:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private isRunningProgram(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Z
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->programKey(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isRunningProgramKey(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method private isTextBoxConfirmCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_b

    return v3

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "done"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "xong"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "accept"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "save"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "submit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "\u0111\u0103ng nh\u1eadp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "ti\u1ebfp t\u1ee5c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "x\u00e1c nh\u1eadn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    :cond_7c
    move v0, v3

    :cond_7d
    return v0
.end method

.method private launchInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->selectInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M\u1edf game t\u1eeb qu\u1ea3n l\u00fd \u1ee9ng d\u1ee5ng: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->startSelectedGame()V

    :cond_21
    return-void
.end method

.method private librarySize(J)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x400

    cmp-long v2, p1, v0

    if-gez v2, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " B"

    goto :goto_32

    :cond_12
    const-wide/32 v2, 0x100000

    cmp-long v4, p1, v2

    if-gez v4, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " KB"

    goto :goto_32

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " MB"

    :goto_32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private libraryStem(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "game"

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_12

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_34

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_34

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_30

    goto :goto_34

    :cond_30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_34
    :goto_34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_43

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private listChoiceImageView(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .registers 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->trimTransparentBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object v0
.end method

.method private loadListChoiceImage(I)Landroid/graphics/Bitmap;
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    if-gez v2, :cond_bf

    iget-wide v4, v1, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_bf

    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->listChoiceImages:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e

    return-object v0

    :cond_1e
    const/4 v0, 0x3

    new-array v0, v0, [I

    :try_start_21
    iget-wide v4, v1, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const/4 v6, 0x0

    new-array v7, v6, [B

    invoke-static {v4, v5, v2, v7, v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeCopyLcduiImageRgba(JI[B[I)I

    move-result v4

    if-lez v4, :cond_99

    aget v5, v0, v6

    if-lez v5, :cond_99

    const/4 v5, 0x1

    aget v7, v0, v5

    if-lez v7, :cond_99

    const/high16 v7, 0x800000

    if-gt v4, v7, :cond_99

    new-array v7, v4, [B

    iget-wide v8, v1, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v8, v9, v2, v7, v0}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeCopyLcduiImageRgba(JI[B[I)I

    move-result v8

    if-lt v8, v4, :cond_99

    aget v8, v0, v6

    if-lez v8, :cond_99

    aget v9, v0, v5

    if-lez v9, :cond_99

    mul-int/2addr v8, v9

    if-lez v8, :cond_99

    mul-int/lit8 v9, v8, 0x4

    if-lt v4, v9, :cond_99

    new-array v11, v8, [I

    move v4, v6

    :goto_55
    if-ge v4, v8, :cond_78

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v10, v9, 0x3

    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v12, v7, v9

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v10, v12, v13, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_78
    aget v4, v0, v6

    aget v7, v0, v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aget v16, v0, v6

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v17, v0, v5

    move-object v10, v4

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->listChoiceImages:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_98} :catch_9a

    return-object v4

    :cond_99
    return-object v3

    :catch_9a
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c \u1ea3nh LCDUI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_bf
    return-object v3
.end method

.method private loadTextBoxResumeState(Ljava/lang/String;)Z
    .registers 15

    const/4 v0, 0x0

    if-eqz p1, :cond_112

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_112

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;

    if-eqz v1, :cond_112

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->componentId:I

    if-ltz v2, :cond_112

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    if-gez v2, :cond_1d

    goto/16 :goto_112

    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCanvasShown:Z

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->componentId:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxComponentId:I

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->parentId:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxParentId:I

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->itemIndex:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxItemIndex:I

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->maxSize:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxMaxSize:I

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->constraints:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxConstraints:I

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->caret:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCaret:I

    iget v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalCaret:I

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalCaret:I

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->title:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_4a

    move-object v3, v4

    goto :goto_4c

    :cond_4a
    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->title:Ljava/lang/String;

    :goto_4c
    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxTitle:Ljava/lang/String;

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->fieldLabel:Ljava/lang/String;

    if-nez v3, :cond_54

    move-object v3, v4

    goto :goto_56

    :cond_54
    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->fieldLabel:Ljava/lang/String;

    :goto_56
    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxFieldLabel:Ljava/lang/String;

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->stateKey:Ljava/lang/String;

    if-nez v3, :cond_5e

    move-object v3, v4

    goto :goto_60

    :cond_5e
    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->stateKey:Ljava/lang/String;

    :goto_60
    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxStateKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->programKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->value:Ljava/lang/String;

    if-nez v3, :cond_6c

    move-object v3, v4

    goto :goto_6e

    :cond_6c
    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->value:Ljava/lang/String;

    :goto_6e
    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalValue:Ljava/lang/String;

    if-eqz v3, :cond_76

    iget-object v4, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->originalValue:Ljava/lang/String;

    :cond_76
    iput-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalValue:Ljava/lang/String;

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCaret:I

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCaret:I

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalCaret:I

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalCaret:I

    iget v0, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCommands:Ljava/util/ArrayList;

    new-instance v12, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v6, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    iget-object v7, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    iget-object v8, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    iget v9, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    iget v10, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->priority:I

    iget v11, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI TextBox resume record loaded programKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " screen="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " valueLength="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " records="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return v2

    :cond_112
    :goto_112
    return v0
.end method

.method private markFreshRestartCanvasPresented()V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4a

    :cond_b
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKeys:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartAwaitingCanvas:Z

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartTextBoxGuardUntil:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI fresh clone restart Canvas accepted programKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " staleTextBoxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " guardMs=1200"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private negativeSoftKeyRank(I)I
    .registers 2

    packed-switch p1, :pswitch_data_e

    :pswitch_3
    const/4 p1, -0x1

    return p1

    :pswitch_5
    const/4 p1, 0x3

    return p1

    :pswitch_7
    const/4 p1, 0x2

    return p1

    :pswitch_9
    const/4 p1, 0x0

    return p1

    :pswitch_b
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private normalizedLcdUiCommandLabel(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    if-nez v2, :cond_10

    move-object v2, v0

    goto :goto_12

    :cond_10
    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    if-nez v2, :cond_22

    move-object p1, v0

    goto :goto_24

    :cond_22
    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    :goto_24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\p{InCombiningDiacriticalMarks}+"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x111

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private now()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openLiveLog()V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "corebridge-session.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PhoneME-CoreBridge"

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_b4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "corebridge-session-recovered-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd-HHmmss-SSS"

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_b4

    :try_start_5e
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_65} :catch_ae

    :try_start_65
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_a9

    const/16 v0, 0x2000

    :try_start_6c
    new-array v0, v0, [B

    :cond_6e
    :goto_6e
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_9e

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kh\u00f4ng xo\u00e1 \u0111\u01b0\u1ee3c file log phi\u00ean c\u0169 sau khi sao l\u01b0u: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_9e
    if-lez v5, :cond_6e

    invoke-virtual {v4, v0, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a3
    .catchall {:try_start_6c .. :try_end_a3} :catchall_a4

    goto :goto_6e

    :catchall_a4
    move-exception v0

    :try_start_a5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v0

    :try_start_aa
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v0

    const-string v3, "Kh\u00f4ng sao l\u01b0u \u0111\u01b0\u1ee3c log phi\u00ean c\u0169"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b4
    :goto_b4
    :try_start_b4
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->now()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " --- CoreBridge Java log started ---\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_e8} :catch_e9

    goto :goto_f2

    :catch_e9
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    const-string v1, "Kh\u00f4ng m\u1edf \u0111\u01b0\u1ee3c file log phi\u00ean"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f2
    return-void
.end method

.method private presentCanvasScreenFromNativeEvent(ILjava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    const-string v1, " kind="

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Canvas event without GameSurfaceView id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->isFrameDeliverySuspended()Z

    move-result v0

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v2}, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliveryState()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v3}, Lcom/phoneme/corebridge/GameSurfaceView;->resumeFrameDeliveryForFreshFrame()V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/phoneme/corebridge/GameSurfaceView;->setVisibility(I)V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->gameContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_43

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_43
    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v3}, Lcom/phoneme/corebridge/GameSurfaceView;->postInvalidate()V

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentationDiagnosticCount:I

    const/4 v4, 0x6

    if-lt v3, v4, :cond_4e

    return-void

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentationDiagnosticCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCDUI Canvas handoff #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " wasSuspended="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " before="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " after="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->frameDeliveryState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$42;

    invoke-direct {v0, p0, v3, p1}, Lcom/phoneme/corebridge/MainActivity$42;-><init>(Lcom/phoneme/corebridge/MainActivity;II)V

    const-wide/16 v1, 0x78

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private programKey(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readTextFile(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_55

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_3c

    const/16 p1, 0x1000

    :try_start_21
    new-array p1, p1, [C

    :goto_23
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    if-gez v2, :cond_2d

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_50

    :cond_2d
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_32

    goto :goto_23

    :catchall_32
    move-exception p1

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw p1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p1

    const-string v1, "[Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c native log: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_55
    :goto_55
    const-string p1, ""

    return-object p1
.end method

.method private rebuildFormCommands()V
    .registers 9

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v3, v2, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v3, :cond_2d

    iget v3, v2, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_13

    :cond_2d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v5, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    invoke-direct {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->negativeSoftKeyRank(I)I

    move-result v5

    if-ltz v5, :cond_5d

    if-lt v5, v3, :cond_55

    goto :goto_5d

    :cond_55
    if-eqz v2, :cond_5a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    move-object v2, v4

    move v3, v5

    goto :goto_3e

    :cond_5d
    :goto_5d
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_61
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_80

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0, v0, v1, v3}, Lcom/phoneme/corebridge/MainActivity;->addFormCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V

    goto :goto_89

    :cond_80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_89

    invoke-direct {p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->addOptionsCommandButton(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    :cond_89
    :goto_89
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_9d

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formCommandBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v5}, Lcom/phoneme/corebridge/MainActivity;->addFormCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V

    :cond_9d
    return-void
.end method

.method private rebuildFormItems()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->formEditorsByItem:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget v1, v0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iget v2, v0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    const/16 v3, 0xc

    const/16 v4, 0xe9

    const/16 v5, 0xe1

    const/16 v6, 0xe5

    const/16 v7, 0xf

    const/16 v8, 0x13

    const/16 v9, 0x8

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-ne v1, v2, :cond_54

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->screenDetailsById:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    invoke-static {v6, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v1, v12, v2, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v13, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    goto :goto_55

    :cond_54
    move v1, v12

    :goto_55
    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_388

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;

    iget-object v14, v0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    iget v15, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-direct {v0, v13, v14}, Lcom/phoneme/corebridge/MainActivity;->formSectionKind(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)I

    move-result v15

    if-eqz v1, :cond_84

    if-eq v15, v1, :cond_84

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->addFormSectionSeparator()V

    :cond_84
    iget v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const/4 v3, 0x5

    const/16 v10, 0xd0

    const/16 v4, 0xc4

    const/16 v5, 0xca

    const/4 v6, 0x6

    const-string v8, ""

    if-eq v1, v6, :cond_2f4

    iget v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const/4 v6, 0x7

    if-ne v1, v6, :cond_99

    goto/16 :goto_2f4

    :cond_99
    if-eqz v14, :cond_f8

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a2

    goto :goto_f8

    :cond_a2
    invoke-direct {v0, v14}, Lcom/phoneme/corebridge/MainActivity;->formChoiceMode(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_ad

    invoke-direct {v0, v13, v14}, Lcom/phoneme/corebridge/MainActivity;->addFormChoicePopupSummary(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V

    goto :goto_ec

    :cond_ad
    iget-object v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-eqz v1, :cond_b3

    iget-object v8, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    :cond_b3
    invoke-direct {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->formSectionHeading(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v12, v4, v12, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    invoke-direct {v0, v13, v3}, Lcom/phoneme/corebridge/MainActivity;->addFormChoiceRow(Lcom/phoneme/corebridge/MainActivity$FormItemState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V

    goto :goto_dc

    :cond_ec
    :goto_ec
    move v8, v9

    const/16 v4, 0x13

    const/4 v5, 0x1

    const/16 v6, 0xc

    const/16 v9, 0xe9

    const/16 v14, 0xe1

    goto/16 :goto_37b

    :cond_f8
    :goto_f8
    iget v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const/4 v3, 0x4

    if-ne v1, v7, :cond_222

    iget-object v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-nez v1, :cond_103

    move-object v1, v8

    goto :goto_109

    :cond_103
    iget-object v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_109
    iget-object v14, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v14}, Lcom/phoneme/corebridge/MainActivity;->isLikelyTextFieldPlaceholder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_148

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_148

    const/16 v9, 0xd

    invoke-static {v5, v4, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v1, v9, v4}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v4, v12, v3, v12, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x1a

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v3, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_148
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xe9

    const/16 v5, 0xe1

    const/16 v9, 0xe5

    invoke-static {v9, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v4, 0x94

    const/16 v5, 0xa0

    const/16 v9, 0x9a

    invoke-static {v9, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->flatFieldBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v9, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    if-eqz v14, :cond_194

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_194
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v4, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    iget v5, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->constraints:I

    invoke-direct {v0, v4, v5}, Lcom/phoneme/corebridge/MainActivity;->effectiveTextBoxConstraints(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->inputTypeFor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1b9

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1b9
    iget v4, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->maxSize:I

    if-lez v4, :cond_1cb

    new-array v4, v1, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v6, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->maxSize:I

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v12

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1cb
    new-array v4, v1, [Z

    aput-boolean v12, v4, v12

    aput-boolean v1, v4, v12

    iget-object v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    if-eqz v1, :cond_1d7

    iget-object v8, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    :cond_1d7
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    aput-boolean v12, v4, v12

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$44;

    invoke-direct {v1, v0, v4, v13, v3}, Lcom/phoneme/corebridge/MainActivity$44;-><init>(Lcom/phoneme/corebridge/MainActivity;[ZLcom/phoneme/corebridge/MainActivity$FormItemState;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$45;

    invoke-direct {v1, v0, v13}, Lcom/phoneme/corebridge/MainActivity$45;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->formEditorsByItem:Ljava/util/Map;

    iget v4, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x2a

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v1, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, v0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22d

    :cond_222
    iget v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    invoke-direct {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->isFormBackgroundItemType(I)Z

    move-result v1

    if-eqz v1, :cond_237

    invoke-direct {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->addFormBackgroundContent(Lcom/phoneme/corebridge/MainActivity$FormItemState;)V

    :goto_22d
    const/16 v3, 0xe5

    const/16 v6, 0xc

    const/16 v9, 0xe9

    const/16 v14, 0xe1

    goto/16 :goto_2ed

    :cond_237
    iget v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    invoke-direct {v0, v1}, Lcom/phoneme/corebridge/MainActivity;->isFormInteractiveRowType(I)Z

    move-result v1

    if-eqz v1, :cond_2e2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v5, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->flatInteractiveBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0xe5

    const/16 v9, 0xe9

    const/16 v14, 0xe1

    invoke-static {v3, v14, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v8, v7, v4}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-nez v5, :cond_27c

    move-object v5, v8

    goto :goto_282

    :cond_27c
    iget-object v5, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_282
    invoke-direct {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->formDisplayValue(Lcom/phoneme/corebridge/MainActivity$FormItemState;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_289

    goto :goto_28a

    :cond_289
    move-object v8, v10

    :goto_28a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2af

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_297

    goto :goto_2ae

    :cond_297
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2ae
    move-object v8, v5

    :cond_2af
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v12, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$46;

    invoke-direct {v4, v0, v13}, Lcom/phoneme/corebridge/MainActivity$46;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v4, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2ed

    :cond_2e2
    const/16 v3, 0xe5

    const/16 v6, 0xc

    const/16 v9, 0xe9

    const/16 v14, 0xe1

    invoke-direct {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->addFormBackgroundContent(Lcom/phoneme/corebridge/MainActivity$FormItemState;)V

    :goto_2ed
    const/16 v4, 0x13

    const/4 v5, 0x1

    const/16 v8, 0x8

    goto/16 :goto_37b

    :cond_2f4
    :goto_2f4
    const/16 v6, 0xc

    const/16 v9, 0xe9

    const/16 v14, 0xe1

    iget-object v1, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-eqz v1, :cond_300

    iget-object v8, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    :cond_300
    invoke-static {v5, v4, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v8, v7, v1}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v12, v3, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1c

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v5, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iget v3, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeMax:I

    const/4 v5, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v8, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeValue:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-boolean v3, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeInteractive:Z

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v1, v8, v12, v10, v12}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget-boolean v3, v13, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeInteractive:Z

    if-eqz v3, :cond_363

    new-instance v3, Lcom/phoneme/corebridge/MainActivity$43;

    invoke-direct {v3, v0, v13}, Lcom/phoneme/corebridge/MainActivity$43;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_363
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x28

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v3, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v10, v0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_37b
    move v3, v6

    move v5, v14

    move v1, v15

    const/16 v6, 0xe5

    move/from16 v17, v8

    move v8, v4

    move v4, v9

    move/from16 v9, v17

    goto/16 :goto_5f

    :cond_388
    return-void
.end method

.method private rebuildListOverlay()V
    .registers 16

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/16 v2, 0x11

    if-eqz v0, :cond_16b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_16b

    :cond_1b
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->findListItemCommandId()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {p0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v5, v7, v9, v11, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->programKey(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    if-nez v8, :cond_5f

    const-string v8, ""

    :cond_5f
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/phoneme/corebridge/MainActivity;->flatListRowBackground(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->isRunningProgram(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Z

    move-result v7

    iget v8, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    const/16 v9, 0x24

    if-gez v8, :cond_ab

    iget v8, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    invoke-direct {p0, v8}, Lcom/phoneme/corebridge/MainActivity;->loadListChoiceImage(I)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_ab

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/phoneme/corebridge/MainActivity;->listChoiceImageView(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v8

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {p0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v8, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {p0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-direct {v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v5, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ab
    iget-object v8, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    invoke-virtual {p0, v8, v2, v1}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    const/16 v10, 0x13

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    const/16 v10, 0x30

    const/4 v11, 0x1

    if-eqz v8, :cond_cf

    iget v8, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    if-ne v8, v11, :cond_e7

    :cond_cf
    iget v8, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    iget-boolean v12, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    invoke-direct {p0, v8, v12}, Lcom/phoneme/corebridge/MainActivity;->choiceAccessory(IZ)Landroid/view/View;

    move-result-object v8

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {p0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e7
    if-eqz v7, :cond_10c

    const/16 v7, 0xe6

    const/16 v8, 0x5a

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const-string v8, "\u25b6"

    const/16 v12, 0x12

    invoke-virtual {p0, v8, v12, v7}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {p0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {v8, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10c
    if-ltz v3, :cond_14a

    const/16 v7, 0xdc

    const/16 v8, 0xd2

    invoke-static {v8, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const-string v8, "\u22ef"

    const/16 v9, 0x18

    invoke-virtual {p0, v8, v9, v7}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v6, Lcom/phoneme/corebridge/MainActivity$47;

    invoke-direct {v6, p0, v4, v3}, Lcom/phoneme/corebridge/MainActivity$47;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x2a

    invoke-virtual {p0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {p0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14a
    new-instance v6, Lcom/phoneme/corebridge/MainActivity$48;

    invoke-direct {v6, p0, v4}, Lcom/phoneme/corebridge/MainActivity$48;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x3e

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v4, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v11}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_23

    :cond_16a
    return-void

    :cond_16b
    :goto_16b
    const/16 v0, 0xf

    const v3, -0x777778

    const-string v4, "Danh s\u00e1ch tr\u1ed1ng"

    invoke-virtual {p0, v4, v0, v3}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x48

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private rebuildTextBoxCommands()V
    .registers 9

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->visibleTextBoxCommands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v5, v4, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    invoke-direct {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->negativeSoftKeyRank(I)I

    move-result v5

    if-ltz v5, :cond_3f

    if-lt v5, v3, :cond_37

    goto :goto_3f

    :cond_37
    if-eqz v2, :cond_3c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    move-object v2, v4

    move v3, v5

    goto :goto_20

    :cond_3f
    :goto_3f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_43
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_62

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct {p0, v0, v1, v3}, Lcom/phoneme/corebridge/MainActivity;->addTextBoxCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V

    goto :goto_6b

    :cond_62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_6b

    invoke-direct {p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->addTextBoxOptionsCommandButton(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    :cond_6b
    :goto_6b
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandBar:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_7f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v5}, Lcom/phoneme/corebridge/MainActivity;->addTextBoxCommandButton(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;Z)V

    :cond_7f
    return-void
.end method

.method private rememberFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 22

    move-object v0, p0

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v8, p7

    move/from16 v9, p8

    if-gtz v3, :cond_d

    return-void

    :cond_d
    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->formChoiceParentByComponent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->formItemCacheByParent:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    if-nez v1, :cond_36

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->formItemCacheByParent:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    move-object v10, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;

    if-nez v1, :cond_5f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/phoneme/corebridge/MainActivity$FormItemState;

    move-object v1, v12

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/phoneme/corebridge/MainActivity$FormItemState;-><init>(IIIILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5f
    iput v3, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->parentId:I

    if-ltz v4, :cond_65

    iput v4, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->itemIndex:I

    :cond_65
    iput v5, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    const-string v2, ""

    if-nez p5, :cond_6d

    move-object v3, v2

    goto :goto_6f

    :cond_6d
    move-object/from16 v3, p5

    :goto_6f
    iput-object v3, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-eqz p6, :cond_75

    move-object/from16 v2, p6

    :cond_75
    iput-object v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    iput v8, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->maxSize:I

    iput v9, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->constraints:I

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eq v5, v2, :cond_81

    if-ne v5, v3, :cond_94

    :cond_81
    const/4 v2, 0x0

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeValue:I

    const/4 v4, 0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeMax:I

    if-ne v5, v3, :cond_92

    move v2, v4

    :cond_92
    iput-boolean v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeInteractive:Z

    :cond_94
    return-void
.end method

.method private removeFormChoiceRows(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-gez p2, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_21

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    if-ne v1, p2, :cond_1e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_21
    return-void
.end method

.method private renderAlertScreen(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v3, ""

    const/4 v4, 0x0

    if-lez v0, :cond_b

    if-eq v0, p1, :cond_6a

    :cond_b
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-ne v0, p1, :cond_10

    move v0, v2

    :cond_10
    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingScreenId:I

    iget-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v5, :cond_1a

    if-lez v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v4

    :goto_1b
    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingNativeListScreen:Z

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_33

    :cond_28
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_33
    :goto_33
    move-object v0, v3

    :goto_34
    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingTitle:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCDUI Alert underlying captured screen="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingScreenId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " list="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingNativeListScreen:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " titleLength="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_6a
    invoke-direct {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    iput-boolean v4, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput-boolean v4, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommandsByScreen:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_ab

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommandsByScreen:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    :cond_ab
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_ae
    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->screenDetailsById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p3, :cond_bc

    move-object v5, v3

    goto :goto_bd

    :cond_bc
    move-object v5, p3

    :goto_bd
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-eq v0, p1, :cond_ce

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_ce
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->restoreCachedFormItems(I)V

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->ensureFormOverlay()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-nez p2, :cond_db

    move-object p2, v3

    :cond_db
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->bringToFront()V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LCDUI screen shown kind=Alert id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " detailLength="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p3, :cond_109

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    :cond_109
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " commandOwner="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method private renderInstalledApps()V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->installedAppsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/16 v1, 0xb0

    const/16 v2, 0xba

    const/16 v3, 0xb4

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const-string v2, "Ch\u01b0a c\u00f3 \u1ee9ng d\u1ee5ng \u0111\u00e3 c\u00e0i"

    const/16 v3, 0xe

    invoke-virtual {p0, v2, v3, v1}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_3a
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    invoke-direct {p0, v0, v2}, Lcom/phoneme/corebridge/MainActivity;->addInstalledAppEntry(Landroid/widget/LinearLayout;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    goto :goto_40

    :cond_50
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private renderNativeListScreen(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    const-string v2, ""

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->ensureFormOverlay()V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-nez p2, :cond_4e

    move-object p2, v2

    :cond_4e
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method private replaceCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    if-gez v0, :cond_16

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-gtz v0, :cond_11

    :cond_f
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    :cond_11
    if-lez v0, :cond_16

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    if-lt v0, v1, :cond_25

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    iget v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private requestStoragePermissionIfNeeded()V
    .registers 4

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hasStoragePermission()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->permissionDialogShown:Z

    if-eqz v0, :cond_b

    goto :goto_3e

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->permissionDialogShown:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "C\u1ea7n quy\u1ec1n truy c\u1eadp b\u1ed9 nh\u1edb"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "PhoneME CoreBridge c\u1ea7n \u0111\u1ecdc file JAR/JAD t\u1eeb b\u1ed9 nh\u1edb d\u00f9ng chung \u0111\u1ec3 ch\u1ea1y game Java ME."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$49;

    invoke-direct {v1, p0}, Lcom/phoneme/corebridge/MainActivity$49;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    const-string v2, "C\u1ea5p quy\u1ec1n"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$50;

    invoke-direct {v1, p0, v0}, Lcom/phoneme/corebridge/MainActivity$50;-><init>(Lcom/phoneme/corebridge/MainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private resolveCurrentRunningProgramKey()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3e

    :cond_3c
    const-string v0, ""

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method private resolveFormChoiceParent(II)I
    .registers 6

    if-lez p2, :cond_3

    return p2

    :cond_3
    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceParentByComponent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1c
    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phoneme/corebridge/MainActivity$FormItemState;

    if-eqz p2, :cond_31

    iget v0, p2, Lcom/phoneme/corebridge/MainActivity$FormItemState;->parentId:I

    if-lez v0, :cond_31

    iget p1, p2, Lcom/phoneme/corebridge/MainActivity$FormItemState;->parentId:I

    return p1

    :cond_31
    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRowsCacheByParent:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_3b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_64
    iget p1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez p1, :cond_6d

    iget-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-nez p2, :cond_6d

    return p1

    :cond_6d
    const/4 p1, -0x1

    return p1
.end method

.method private resolveScreenProgramKey(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->screenIdToProgramKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private resolveTerminalCommandProgramKey()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->resolveCurrentRunningProgramKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->resolveScreenProgramKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    :cond_18
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->resolveScreenProgramKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    return-object v0

    :cond_25
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->resolveScreenProgramKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_34

    :cond_32
    const-string v0, ""

    :goto_34
    return-object v0
.end method

.method private resolveTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z

    const-string v1, ""

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    move-object v1, p1

    :goto_14
    return-object v1

    :cond_15
    if-nez p1, :cond_18

    move-object p1, v1

    :cond_18
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentValues:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentValues:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_34

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentCarets:Ljava/util/Map;

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_34
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4d

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentCarets:Ljava/util/Map;

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_97

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5a

    goto :goto_97

    :cond_5a
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentCarets:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LCDUI TextBox accepted non-empty VM value over empty cache key="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " valueLength="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-object p1

    :cond_97
    :goto_97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_cf

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox ignored stale initial detail key="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " incomingLength="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " cachedLength="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_cf
    return-object v0
.end method

.method private restoreAlertUnderlyingScreenAfterDestruction(Ljava/lang/String;)V
    .registers 10

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingScreenId:I

    iget-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingNativeListScreen:Z

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingTitle:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_b

    move-object v2, v3

    :cond_b
    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LCDUI Alert cleanup after destruction alert="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " underlying="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " list="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " reason="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingScreenId:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingNativeListScreen:Z

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->alertUnderlyingTitle:Ljava/lang/String;

    iget v7, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    if-ne v7, v4, :cond_58

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    :cond_58
    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommandsByScreen:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-gtz v0, :cond_7d

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    invoke-direct {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    const-string p1, "LCDUI Alert cleanup no underlying screen; host UI hidden"

    :goto_79
    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_7d
    invoke-direct {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    const/4 p1, 0x1

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_a4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c1

    :cond_a4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->restoreCachedFormItems(I)V

    :goto_c1
    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->ensureFormOverlay()V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_ce

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ce
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Alert cleanup restored underlying screen="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " commandOwner="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_79
.end method

.method private restoreCachedFormItems(I)V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formItemCacheByParent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    :cond_18
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRowsCacheByParent:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    :cond_30
    return-void
.end method

.method private restoreCanvasPresentation(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Canvas presentation restored reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method private restoreTextBoxAfterProgramList()V
    .registers 15

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    if-eqz v0, :cond_137

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxComponentId:I

    if-gez v0, :cond_a

    goto/16 :goto_137

    :cond_a
    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->bringTextBoxOverlayToFront()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const-string v0, "LCDUI TextBox resume already visible; z-order refreshed"

    goto/16 :goto_134

    :cond_29
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCanvasShown:Z

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxTitle:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_37

    move-object v2, v3

    :cond_37
    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iget v5, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxComponentId:I

    iget v6, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxParentId:I

    iget v7, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxItemIndex:I

    iget-object v8, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxFieldLabel:Ljava/lang/String;

    iget-object v9, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    iget v10, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxMaxSize:I

    iget v11, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxConstraints:I

    iget v12, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCaret:I

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/phoneme/corebridge/MainActivity;->showTextBoxOverlay(IIILjava/lang/String;Ljava/lang/String;III)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxStateKey:Ljava/lang/String;

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_5d

    :cond_5a
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxStateKey:Ljava/lang/String;

    goto :goto_5f

    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    :goto_5f
    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxValue:Ljava/lang/String;

    if-nez v2, :cond_66

    move-object v2, v3

    :cond_66
    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCaret:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalValue:Ljava/lang/String;

    if-eqz v2, :cond_7e

    move-object v3, v2

    :cond_7e
    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxOriginalCaret:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshot:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshotScreenId:I

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    new-instance v13, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v7, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    iget-object v8, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    iget-object v9, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    iget v10, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    iget v11, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->priority:I

    iget v12, v3, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    :cond_c9
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildTextBoxCommands()V

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->bringTextBoxOverlayToFront()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI TextBox resumed after Programs List as host overlay item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valueLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI TextBox resume guard kept until OK/Cancel screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_134
    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_137
    :goto_137
    return-void
.end method

.method private runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isRunningProgramKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const-string p1, ""

    :goto_9
    return-object p1
.end method

.method private runtimeSnapshot()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v1, "nativeLogFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLogFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "nativeIsRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeIsRunning(J)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "nativeLastExitCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLastExitCode(J)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v3, v4}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLastError(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "nativeLastError="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_66
    iget-wide v3, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const/4 v1, 0x1

    invoke-static {v3, v4, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeMidletError(JI)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_82

    const-string v3, "nativeMidletError[1]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6f

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    if-nez v1, :cond_8

    goto :goto_6f

    :cond_8
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    iget-object v3, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    goto :goto_56

    :cond_22
    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    if-eqz v0, :cond_31

    iget-object v1, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->lastUsed:J

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->saveGameLibrary()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0110\u00e3 ch\u1ecdn game l\u01b0u: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_56
    :goto_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game trong qu\u1ea3n l\u00fd \u1ee9ng d\u1ee5ng kh\u00f4ng c\u00f2n t\u1ed3n t\u1ea1i: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->loadGameLibrary()V

    :cond_6f
    :goto_6f
    return v0
.end method

.method private selectedInstalledEntry()Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->findGameLibraryEntry(Ljava/lang/String;)Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    if-nez v0, :cond_13

    goto :goto_34

    :cond_13
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v3, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_34
    :goto_34
    return-object v1
.end method

.method private sendFormChoiceSelection(Lcom/phoneme/corebridge/MainActivity$FormItemState;Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;Z)V
    .registers 11

    iget-wide v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    if-nez p2, :cond_d

    goto :goto_1e

    :cond_d
    iget v4, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentId:I

    iget v5, p2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/phoneme/corebridge/MainActivity$2;

    move-object v0, p2

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/phoneme/corebridge/MainActivity$2;-><init>(Lcom/phoneme/corebridge/MainActivity;JIIZ)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private setGameSessionPresented(Z)V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->appShellContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_a

    goto/16 :goto_72

    :cond_a
    const/4 v0, 0x0

    if-nez p1, :cond_1a

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1a

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    :cond_1a
    iget-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionPresented:Z

    const/16 v2, 0x8

    if-ne v1, p1, :cond_3b

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz p1, :cond_2a

    move v3, v0

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    if-ne v1, v3, :cond_3b

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->appShellContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz p1, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v0

    :goto_38
    if-ne v1, v3, :cond_3b

    return-void

    :cond_3b
    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionPresented:Z

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->appShellContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_43

    move v3, v2

    goto :goto_44

    :cond_43
    move v3, v0

    :goto_44
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->gameContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_5e
    const-string p1, "Host presentation switched to game session"

    goto :goto_68

    :cond_61
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->appShellContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    const-string p1, "Host presentation switched to app shell"

    :goto_68
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->menuButton:Landroid/widget/Button;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    :cond_6f
    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

.method private setNativeScreenVisible(Z)V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->suspendFrameDelivery()V

    goto :goto_16

    :cond_b
    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->isFrameDeliverySuspended()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->resumeFrameDeliveryForFreshFrame()V

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz p1, :cond_1d

    const/16 v1, 0x8

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_26

    return-void

    :cond_26
    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {p1}, Lcom/phoneme/corebridge/GameSurfaceView;->postInvalidate()V

    const-string p1, "LCDUI presentation Canvas attached; fresh frame pending"

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_38
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_46

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->bringTextBoxOverlayToFront()V

    return-void

    :cond_46
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_53
    return-void
.end method

.method private settingsCheckBox(Ljava/lang/String;Z)Landroid/widget/CheckBox;
    .registers 8

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xe1

    const/16 v1, 0xe9

    const/16 v2, 0xe5

    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextSize(F)V

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance p1, Landroid/content/res/ColorStateList;

    const/4 p2, 0x2

    new-array p2, p2, [[I

    const v1, 0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    new-array v2, v2, [I

    aput-object v2, p2, v1

    const/16 v1, 0x64

    const/16 v2, 0xdc

    const/16 v3, 0x5c

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/16 v2, 0xb0

    const/16 v3, 0xba

    const/16 v4, 0xb4

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {p1, p2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private settingsChoiceButton(Ljava/lang/String;)Landroid/widget/Button;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    return-object p1
.end method

.method private settingsInt(Landroid/widget/EditText;III)I
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_18} :catch_19

    return p1

    :catch_19
    move-exception p1

    return p2
.end method

.method private settingsNumberField(I)Landroid/widget/EditText;
    .registers 6

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xf2

    const/16 v1, 0xf8

    const/16 v2, 0xf5

    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->flatFieldBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    new-array p1, p1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-object v0
.end method

.method private settingsRow(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v6, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0xe1

    const/16 v4, 0xe9

    const/16 v5, 0xe5

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {p0, p1, v4, v3}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xaa

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private showAppSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_3ad

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    if-nez v3, :cond_e

    goto/16 :goto_3ad

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->hideAppSettings()V

    iput-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->appSettingsEntry:Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iput-boolean v2, v0, Lcom/phoneme/corebridge/MainActivity;->appSettingsFirstLaunch:Z

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->appSettingsOverlay:Landroid/widget/FrameLayout;

    const/16 v4, 0x12

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v14

    invoke-virtual {v0, v11}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v15

    invoke-virtual {v7, v12, v14, v11, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v11, "H\u1ee7y"

    invoke-virtual {v0, v11}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v14, Lcom/phoneme/corebridge/MainActivity$12;

    invoke-direct {v14, v0}, Lcom/phoneme/corebridge/MainActivity$12;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x4e

    invoke-virtual {v0, v15}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v15

    const/16 v13, 0x2c

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {v14, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    const/16 v11, 0xe5

    const/16 v14, 0xe1

    const/16 v15, 0xe9

    invoke-static {v11, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v0, v10, v4, v8}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v9, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_b9

    const-string v2, "B\u1eaft \u0111\u1ea7u"

    goto :goto_bb

    :cond_b9
    const-string v2, "L\u01b0u"

    :goto_bb
    invoke-virtual {v0, v2}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$13;

    invoke-direct {v4, v0}, Lcom/phoneme/corebridge/MainActivity$13;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x58

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {v4, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x34

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    const/4 v10, -0x1

    invoke-direct {v2, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v7, v9, v9, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v6, -0x1

    invoke-direct {v10, v6, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "Hi\u1ec3n th\u1ecb"

    invoke-direct {v0, v7, v2}, Lcom/phoneme/corebridge/MainActivity;->addSettingsSection(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v2, v5, v10, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget v5, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    invoke-direct {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->settingsNumberField(I)Landroid/widget/EditText;

    move-result-object v5

    iput-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsWidthView:Landroid/widget/EditText;

    iget v5, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    invoke-direct {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->settingsNumberField(I)Landroid/widget/EditText;

    move-result-object v5

    iput-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsHeightView:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsWidthView:Landroid/widget/EditText;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x30

    invoke-virtual {v0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {v6, v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u00d7"

    const/16 v6, 0xe5

    invoke-static {v6, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v6, 0x12

    invoke-virtual {v0, v5, v6, v12}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x24

    invoke-virtual {v0, v12}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsHeightView:Landroid/widget/EditText;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {v6, v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u2194"

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v6, Lcom/phoneme/corebridge/MainActivity$14;

    invoke-direct {v6, v0}, Lcom/phoneme/corebridge/MainActivity$14;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x32

    invoke-virtual {v0, v12}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {v6, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x38

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    const/4 v12, -0x1

    invoke-direct {v5, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "Preset k\u00edch th\u01b0\u1edbc m\u00e0n h\u00ecnh"

    invoke-direct {v0, v2}, Lcom/phoneme/corebridge/MainActivity;->settingsChoiceButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsPresetView:Landroid/widget/Button;

    new-instance v10, Lcom/phoneme/corebridge/MainActivity$15;

    invoke-direct {v10, v0}, Lcom/phoneme/corebridge/MainActivity$15;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsPresetView:Landroid/widget/Button;

    invoke-direct {v0, v2, v5}, Lcom/phoneme/corebridge/MainActivity;->settingsRow(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    const/4 v12, -0x1

    invoke-direct {v5, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "Gi\u1eef t\u1ef7 l\u1ec7 Canvas"

    iget-boolean v5, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    invoke-direct {v0, v2, v5}, Lcom/phoneme/corebridge/MainActivity;->settingsCheckBox(Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v2

    iput-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->settingsKeepAspectView:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {v5, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-virtual {v0, v8}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v13

    invoke-virtual {v0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    invoke-virtual {v2, v5, v12, v13, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v5, "Canvas scale"

    const/16 v10, 0xe5

    invoke-static {v10, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    const/16 v10, 0xe

    invoke-virtual {v0, v5, v10, v12}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x2c

    invoke-virtual {v0, v13}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {v12, v9, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xe5

    invoke-static {v8, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v0, v5, v10, v8}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleValueView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleValueView:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {v8, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/SeekBar;

    invoke-direct {v5, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    const/16 v8, 0xaf

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    iget v10, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    add-int/lit8 v10, v10, -0x19

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    new-instance v8, Lcom/phoneme/corebridge/MainActivity$16;

    invoke-direct {v8, v0}, Lcom/phoneme/corebridge/MainActivity$16;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0xb4

    invoke-virtual {v0, v9}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v10

    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {v8, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    const/4 v10, -0x1

    invoke-direct {v5, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->updateSettingsScaleLabel()V

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    if-nez v2, :cond_2c6

    const-string v2, "Tr\u00ean"

    goto :goto_2d0

    :cond_2c6
    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2ce

    const-string v2, "D\u01b0\u1edbi"

    goto :goto_2d0

    :cond_2ce
    const-string v2, "Gi\u1eefa"

    :goto_2d0
    invoke-direct {v0, v2}, Lcom/phoneme/corebridge/MainActivity;->settingsChoiceButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;

    iget v5, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;

    new-instance v5, Lcom/phoneme/corebridge/MainActivity$17;

    invoke-direct {v5, v0}, Lcom/phoneme/corebridge/MainActivity$17;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "V\u1ecb tr\u00ed Canvas"

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsPositionView:Landroid/widget/Button;

    invoke-direct {v0, v2, v5}, Lcom/phoneme/corebridge/MainActivity;->settingsRow(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v8

    const/4 v10, -0x1

    invoke-direct {v5, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_306

    const-string v2, "Pixel nguy\u00ean"

    goto :goto_310

    :cond_306
    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_30e

    const-string v2, "K\u00e9o \u0111\u1ea7y"

    goto :goto_310

    :cond_30e
    const-string v2, "V\u1eeba c\u1eeda s\u1ed5"

    :goto_310
    invoke-direct {v0, v2}, Lcom/phoneme/corebridge/MainActivity;->settingsChoiceButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleModeView:Landroid/widget/Button;

    iget v5, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleModeView:Landroid/widget/Button;

    new-instance v5, Lcom/phoneme/corebridge/MainActivity$18;

    invoke-direct {v5, v0}, Lcom/phoneme/corebridge/MainActivity$18;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "Ki\u1ec3u scale Canvas"

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleModeView:Landroid/widget/Button;

    invoke-direct {v0, v2, v5}, Lcom/phoneme/corebridge/MainActivity;->settingsRow(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    const/4 v8, -0x1

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "L\u1ecdc \u1ea3nh"

    iget-boolean v5, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->imageFilter:Z

    invoke-direct {v0, v2, v5}, Lcom/phoneme/corebridge/MainActivity;->settingsCheckBox(Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v2

    iput-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->settingsFilterView:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "Bu\u1ed9c Canvas to\u00e0n m\u00e0n h\u00ecnh"

    iget-boolean v1, v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->fullscreen:Z

    invoke-direct {v0, v2, v1}, Lcom/phoneme/corebridge/MainActivity;->settingsCheckBox(Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v1

    iput-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->settingsFullscreenView:Landroid/widget/CheckBox;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {v2, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xb0

    const/16 v2, 0xba

    invoke-static {v9, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const-string v2, "Thi\u1ebft l\u1eadp \u0111\u01b0\u1ee3c l\u01b0u ri\u00eang cho \u1ee9ng d\u1ee5ng n\u00e0y."

    const/16 v4, 0xc

    invoke-virtual {v0, v2, v4, v1}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v1, v2, v5, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->rootContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_3ad
    :goto_3ad
    return-void
.end method

.method private showFormChoicePopup(Lcom/phoneme/corebridge/MainActivity$FormItemState;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phoneme/corebridge/MainActivity$FormItemState;",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_61

    if-eqz p2, :cond_61

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_61

    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, ""

    if-ge v2, v3, :cond_32

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget-object v5, v3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    if-nez v5, :cond_26

    goto :goto_28

    :cond_26
    iget-object v4, v3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    :goto_28
    aput-object v4, v0, v2

    iget-boolean v3, v3, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    if-eqz v3, :cond_2f

    move v1, v2

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_32
    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-nez v2, :cond_37

    goto :goto_3d

    :cond_37
    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_3d
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v4, "Ch\u1ecdn gi\u00e1 tr\u1ecb"

    :cond_45
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/phoneme/corebridge/MainActivity$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/phoneme/corebridge/MainActivity$3;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/util/ArrayList;Lcom/phoneme/corebridge/MainActivity$FormItemState;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "H\u1ee7y"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_61
    :goto_61
    return-void
.end method

.method private showInstalledAppMenu(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const-string v1, "Kh\u1edfi ch\u1ea1y"

    invoke-interface {p2, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/phoneme/corebridge/MainActivity$7;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const-string v1, "Thi\u1ebft l\u1eadp"

    invoke-interface {p2, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/phoneme/corebridge/MainActivity$8;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const-string v1, "G\u1ee1 c\u00e0i \u0111\u1eb7t"

    invoke-interface {p2, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/phoneme/corebridge/MainActivity$9;-><init>(Lcom/phoneme/corebridge/MainActivity;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private showSettingsChoices(Landroid/widget/Button;[Ljava/lang/String;[II)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_e

    aget v2, p3, v1

    if-ne v2, p4, :cond_b

    move v0, v1

    goto :goto_e

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    :goto_e
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/phoneme/corebridge/MainActivity$11;-><init>(Lcom/phoneme/corebridge/MainActivity;Landroid/widget/Button;[Ljava/lang/String;[I)V

    invoke-virtual {p4, p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showTextBoxOverlay(IIILjava/lang/String;Ljava/lang/String;III)V
    .registers 16

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->ensureTextBoxOverlay()V

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxParentId:I

    iput p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxItemIndex:I

    const/4 p2, 0x0

    invoke-static {p2, p6}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    invoke-direct {p0, p4, p7}, Lcom/phoneme/corebridge/MainActivity;->effectiveTextBoxConstraints(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    const-string p3, ""

    if-nez p4, :cond_1c

    move-object p4, p3

    goto :goto_20

    :cond_1c
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    :goto_20
    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxFieldLabel:Ljava/lang/String;

    iget p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iget p6, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxParentId:I

    iget p7, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxItemIndex:I

    invoke-direct {p0, p4, p6, p7, v0}, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey(IIII)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    iget-object p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxFieldLabel:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    const/high16 p6, 0x10000

    const/4 p7, 0x1

    if-eqz p4, :cond_42

    iget p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    and-int/2addr p4, p6

    if-nez p4, :cond_42

    move p4, p7

    goto :goto_43

    :cond_42
    move p4, p2

    :goto_43
    iput-boolean p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMetadataPending:Z

    const-string v0, " valueLength="

    if-eqz p4, :cond_81

    if-nez p5, :cond_4c

    move-object p5, p3

    :cond_4c
    iput-object p5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingValue:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p8, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingCaret:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox provisional state key="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    goto :goto_8b

    :cond_81
    iput-object p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingValue:Ljava/lang/String;

    iput p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingCaret:I

    iget-object p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-direct {p0, p5, p4, p8}, Lcom/phoneme/corebridge/MainActivity;->resolveTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    :goto_8b
    iget-boolean p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMetadataPending:Z

    const/4 v1, 0x0

    if-eqz p4, :cond_92

    move-object p4, v1

    goto :goto_9c

    :cond_92
    iget-object p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentCarets:Ljava/util/Map;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    :goto_9c
    iget-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMetadataPending:Z

    if-eqz v2, :cond_a3

    iget p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxPendingCaret:I

    goto :goto_aa

    :cond_a3
    if-eqz p4, :cond_a9

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p8

    :cond_a9
    move p4, p8

    :goto_aa
    iput-object p5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p8

    invoke-static {p4, p8}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    iput-object p5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxTrustedValue:Ljava/lang/String;

    iget-object p8, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    iput-object p8, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    iput p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorFocused:Z

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p4

    const/16 p8, 0x10

    invoke-virtual {p4, p8}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->bringTextBoxOverlayToFront()V

    iget-object p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->configureTextBoxEditorInput()V

    iget p4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    const/high16 p8, 0x20000

    and-int/2addr p4, p8

    if-nez p4, :cond_e8

    move p4, p7

    goto :goto_e9

    :cond_e8
    move p4, p2

    :goto_e9
    iput-boolean p7, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    iget-object p8, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p8, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxCharacterCount()V

    iget p8, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {p8, v2}, Ljava/lang/Math;->min(II)I

    move-result p8

    invoke-static {p2, p8}, Ljava/lang/Math;->max(II)I

    move-result p8

    :try_start_107
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2, p8}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_10c
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_10c} :catch_10d

    goto :goto_117

    :catch_10d
    move-exception v2

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :goto_117
    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    iput-boolean p7, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    :try_start_11b
    iget-object p7, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    and-int/2addr p6, v2

    if-eqz p6, :cond_126

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    :cond_126
    invoke-virtual {p7, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    iget-object p6, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p6, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildTextBoxCommands()V

    iget-boolean p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-nez p3, :cond_13c

    iget-wide p6, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {p6, p7, p1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLcdUiFocusItem(JI)V

    :cond_13c
    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    iget v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    move v2, p1

    move-object v3, p5

    move v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/phoneme/corebridge/GameSurfaceView;->beginTextInput(ILjava/lang/String;III)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "LCDUI TextBox host active item="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " field="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxFieldLabel:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " editable="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " stateKey="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " caret="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V
    :try_end_1a5
    .catchall {:try_start_11b .. :try_end_1a5} :catchall_1a6

    return-void

    :catchall_1a6
    move-exception p1

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    throw p1
.end method

.method private snapshotTextBoxCommands()V
    .registers 12

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    :cond_b
    iput v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshotScreenId:I

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshot:Ljava/util/ArrayList;

    new-instance v10, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v4, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    iget-object v5, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    iget-object v6, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    iget v7, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    iget v8, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->priority:I

    iget v9, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox command snapshot count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshot:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method private stopLcdUiPolling()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiPolling:Z

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiPoller:Ljava/lang/Runnable;

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiPoller:Ljava/lang/Runnable;

    :cond_16
    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formItemCacheByParent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRowsCacheByParent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceParentByComponent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->screenIdToProgramKey:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v1, "LCDUI polling stopped"

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->clearPendingTerminalIdentity(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    return-void
.end method

.method private static stringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private textBoxStateKey(IIII)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    :cond_c
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const-string v0, "direct"

    :cond_16
    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_28

    const-string v1, ""

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|program="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "|parent="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "|component="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "|slot="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private trimTransparentBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_70

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    if-le v0, v10, :cond_70

    if-le v9, v10, :cond_70

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_70

    :cond_1f
    mul-int v1, v0, v9

    new-array v11, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v11

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v5, v0

    move v4, v1

    move v3, v2

    move v6, v9

    :goto_34
    if-ge v4, v9, :cond_59

    mul-int v7, v4, v0

    move v8, v1

    :goto_39
    if-ge v8, v0, :cond_56

    add-int v12, v7, v8

    aget v12, v11, v12

    ushr-int/lit8 v12, v12, 0x18

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8

    if-le v12, v13, :cond_53

    if-ge v8, v5, :cond_4a

    move v5, v8

    :cond_4a
    if-le v8, v2, :cond_4d

    move v2, v8

    :cond_4d
    if-ge v4, v6, :cond_50

    move v6, v4

    :cond_50
    if-le v4, v3, :cond_53

    move v3, v4

    :cond_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_59
    if-lt v2, v5, :cond_70

    if-lt v3, v6, :cond_70

    if-nez v5, :cond_68

    if-nez v6, :cond_68

    sub-int/2addr v0, v10

    if-ne v2, v0, :cond_68

    sub-int/2addr v9, v10

    if-ne v3, v9, :cond_68

    goto :goto_70

    :cond_68
    sub-int/2addr v2, v5

    add-int/2addr v2, v10

    sub-int/2addr v3, v6

    add-int/2addr v3, v10

    invoke-static {p1, v5, v6, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_70
    :goto_70
    return-object p1
.end method

.method private uninstallInstalledEntry(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_34

    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeIsRunning(J)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kh\u00f4ng g\u1ee1 c\u00e0i \u0111\u1eb7t app \u0111ang ch\u1ea1y: "

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    iget-object v2, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kh\u00f4ng th\u1ec3 x\u00f3a file game: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_2c

    :cond_5d
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, ""

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;

    const-string v1, "Ch\u01b0a ch\u1ecdn game."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7f
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->saveGameLibrary()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->renderInstalledApps()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0110\u00e3 g\u1ee1 c\u00e0i \u0111\u1eb7t app: "

    goto :goto_22
.end method

.method private updateFormChoiceRow(IIIZILjava/lang/String;I)V
    .registers 21

    move-object v0, p0

    move v1, p2

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRowsCacheByParent:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1e

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRowsCacheByParent:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_36

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    iget v2, v0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-ne v2, v1, :cond_47

    iget-boolean v2, v0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-nez v2, :cond_47

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_55

    const/4 v2, 0x0

    move/from16 v8, p3

    goto :goto_62

    :cond_55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v5, v4, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    move/from16 v8, p3

    if-ne v5, v8, :cond_a3

    move-object v2, v4

    :goto_62
    if-nez v2, :cond_79

    new-instance v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    move-object v6, v2

    move v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;-><init>(IILjava/lang/String;ZII)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    :cond_79
    if-nez p6, :cond_7e

    const-string v4, ""

    goto :goto_80

    :cond_7e
    move-object/from16 v4, p6

    :goto_80
    iput-object v4, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    move/from16 v4, p4

    iput-boolean v4, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    move/from16 v5, p5

    iput v5, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    move/from16 v6, p7

    iput v6, v2, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    :goto_8e
    new-instance v2, Lcom/phoneme/corebridge/MainActivity$52;

    invoke-direct {v2, p0}, Lcom/phoneme/corebridge/MainActivity$52;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v2, v0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-ne v2, v1, :cond_a2

    iget-boolean v1, v0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v1, :cond_9f

    goto :goto_a2

    :cond_9f
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    :cond_a2
    :goto_a2
    return-void

    :cond_a3
    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    goto :goto_4b
.end method

.method private updateFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 24

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v10, p4

    move/from16 v8, p7

    move/from16 v9, p8

    iget v1, v0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-gtz v1, :cond_e

    return-void

    :cond_e
    invoke-direct/range {p0 .. p8}, Lcom/phoneme/corebridge/MainActivity;->rememberFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, ""

    if-nez v1, :cond_44

    new-instance v14, Lcom/phoneme/corebridge/MainActivity$FormItemState;

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/phoneme/corebridge/MainActivity$FormItemState;-><init>(IIIILjava/lang/String;Ljava/lang/String;II)V

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v14

    goto :goto_7b

    :cond_44
    move/from16 v2, p2

    iput v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->parentId:I

    if-ltz v4, :cond_4c

    iput v4, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->itemIndex:I

    :cond_4c
    iput v10, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->componentType:I

    if-nez p5, :cond_52

    move-object v2, v13

    goto :goto_54

    :cond_52
    move-object/from16 v2, p5

    :goto_54
    iput-object v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->label:Ljava/lang/String;

    if-nez p6, :cond_5a

    move-object v2, v13

    goto :goto_5c

    :cond_5a
    move-object/from16 v2, p6

    :goto_5c
    iput-object v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    iput v8, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->maxSize:I

    iput v9, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->constraints:I

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eq v10, v2, :cond_68

    if-ne v10, v3, :cond_7b

    :cond_68
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeValue:I

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeMax:I

    if-ne v10, v3, :cond_78

    move v2, v11

    goto :goto_79

    :cond_78
    move v2, v12

    :goto_79
    iput-boolean v2, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->gaugeInteractive:Z

    :cond_7b
    :goto_7b
    const/16 v2, 0xf

    if-ne v10, v2, :cond_b2

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->formEditorsByItem:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-nez v2, :cond_8e

    goto :goto_b2

    :cond_8e
    iget-object v3, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    if-eqz v3, :cond_94

    iget-object v13, v1, Lcom/phoneme/corebridge/MainActivity$FormItemState;->value:Ljava/lang/String;

    :cond_94
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    return-void

    :cond_a3
    iput-boolean v11, v0, Lcom/phoneme/corebridge/MainActivity;->applyingFormText:Z

    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    iput-boolean v12, v0, Lcom/phoneme/corebridge/MainActivity;->applyingFormText:Z

    return-void

    :cond_b2
    :goto_b2
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    return-void
.end method

.method private updateLcdUiSoftInputMode()V
    .registers 3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hasFocusedFormEditor()Z

    move-result v0

    :cond_1d
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v0, :cond_26

    const/16 v0, 0x10

    goto :goto_28

    :cond_26
    const/16 v0, 0x30

    :goto_28
    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private updateListChoiceRow(IIZILjava/lang/String;I)V
    .registers 15

    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v0, :cond_b3

    if-gez p2, :cond_8

    goto/16 :goto_b3

    :cond_8
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->currentChoiceRows()Ljava/util/ArrayList;

    move-result-object v0

    if-nez p5, :cond_10

    const-string p5, ""

    :cond_10
    move-object v4, p5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_76

    if-gez p4, :cond_1e

    goto :goto_76

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    const/4 p5, 0x0

    :goto_25
    if-ltz p3, :cond_38

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget p6, p6, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    if-ne p6, p2, :cond_35

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move p5, p4

    :cond_35
    add-int/lit8 p3, p3, -0x1

    goto :goto_25

    :cond_38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "LCDUI List empty choice row "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz p5, :cond_48

    const-string p4, "removed"

    goto :goto_4a

    :cond_48
    const-string p4, "ignored"

    :goto_4a
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " component="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " index="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " screen="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    goto :goto_b0

    :cond_76
    :goto_76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_7a
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_82

    const/4 p5, 0x0

    goto :goto_8d

    :cond_82
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    if-ne v2, p2, :cond_7a

    move-object p5, v1

    :goto_8d
    if-nez p5, :cond_9e

    new-instance p5, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;-><init>(IILjava/lang/String;ZII)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_9e
    iput p1, p5, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    iput-object v4, p5, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->text:Ljava/lang/String;

    iput-boolean p3, p5, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    iput p4, p5, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->imageKey:I

    iput p6, p5, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    :goto_a8
    new-instance p1, Lcom/phoneme/corebridge/MainActivity$53;

    invoke-direct {p1, p0}, Lcom/phoneme/corebridge/MainActivity$53;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_b0
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    :cond_b3
    :goto_b3
    return-void
.end method

.method private updateListChoiceType(II)V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    if-ne v2, p1, :cond_15

    iput p2, v1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->choiceType:I

    goto :goto_15

    :cond_28
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    return-void
.end method

.method private updateSettingsScaleLabel()V
    .registers 4

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleValueView:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->settingsScaleView:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method

.method private updateTextBoxCharacterCount()V
    .registers 5

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCounterView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    :goto_10
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1c
    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCounterView:Landroid/widget/TextView;

    if-lez v1, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_3e
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTextBoxEditorFromVm(Ljava/lang/String;I)V
    .registers 9

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    move-object v2, p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxCharacterCount()V

    :try_start_22
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_32

    :catch_28
    move-exception p1

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_32
    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->applyingTextBoxText:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentValues:Ljava/util/Map;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentCarets:Ljava/util/Map;

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4e

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxTrustedValue:Ljava/lang/String;

    :cond_4e
    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftValue:Ljava/lang/String;

    iput v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxDraftCaret:I

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    iput v5, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    iget v4, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    invoke-virtual/range {v0 .. v5}, Lcom/phoneme/corebridge/GameSurfaceView;->beginTextInput(ILjava/lang/String;III)V

    return-void
.end method

.method private visibleTextBoxCommands()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    return-object v0

    :cond_b
    iget v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-lez v0, :cond_17

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshotScreenId:I

    if-eq v0, v1, :cond_14

    goto :goto_17

    :cond_14
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCommandSnapshot:Ljava/util/ArrayList;

    goto :goto_19

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    :goto_19
    return-object v0
.end method


# virtual methods
.method public activateTextBoxEditor()V
    .registers 6

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_93

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    if-ltz v1, :cond_93

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    goto/16 :goto_93

    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorFocused:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_34

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_46} :catch_47

    goto :goto_51

    :catch_47
    move-exception v2

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :goto_51
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_65

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI TextBox editor focused item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stateKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_93
    :goto_93
    return-void
.end method

.method public appendFrameTelemetry(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FRAME: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->now()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/phoneme/corebridge/MainActivity;->logLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3b
    iget-wide v5, v1, Lcom/phoneme/corebridge/MainActivity;->frameTelemetryCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/phoneme/corebridge/MainActivity;->frameTelemetryCount:J

    iget-object v9, v1, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x20000

    if-le v9, v11, :cond_5c

    iget-object v9, v1, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v9, v10, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_5c
    iget-object v9, v1, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_b4

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1e

    if-eqz v9, :cond_91

    :try_start_64
    iget-object v9, v1, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, v5, v7

    if-eqz v0, :cond_73

    rem-long v15, v5, v13

    cmp-long v0, v15, v11

    if-nez v0, :cond_91

    :cond_73
    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    iget-object v9, v1, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_88} :catch_89
    .catchall {:try_start_64 .. :try_end_88} :catchall_b4

    goto :goto_91

    :catch_89
    move-exception v0

    :try_start_8a
    const-string v9, "PhoneME-CoreBridge"

    const-string v10, "Kh\u00f4ng ghi \u0111\u01b0\u1ee3c FRAME log"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_91
    :goto_91
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_b4

    cmp-long v0, v5, v7

    if-eqz v0, :cond_9c

    rem-long v7, v5, v13

    cmp-long v4, v7, v11

    if-nez v4, :cond_a1

    :cond_9c
    const-string v4, "PhoneME-CoreBridge"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    if-eqz v0, :cond_b0

    rem-long/2addr v5, v13

    cmp-long v0, v5, v11

    if-eqz v0, :cond_b0

    const-string v0, "no new frame"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    :cond_b0
    invoke-direct {v1, v3}, Lcom/phoneme/corebridge/MainActivity;->enqueueFrameStatus(Ljava/lang/String;)V

    :cond_b3
    return-void

    :catchall_b4
    move-exception v0

    :try_start_b5
    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v0
.end method

.method public appendLog(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->now()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->logLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_24
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x20000

    if-le v2, v4, :cond_3e

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->logBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3e
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_7b

    if-eqz v2, :cond_6d

    :try_start_42
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5a

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFrameLog:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5a
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_64} :catch_65
    .catchall {:try_start_42 .. :try_end_64} :catchall_7b

    goto :goto_6d

    :catch_65
    move-exception v0

    :try_start_66
    const-string v2, "PhoneME-CoreBridge"

    const-string v3, "Kh\u00f4ng ghi \u0111\u01b0\u1ee3c file log phi\u00ean"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6d
    :goto_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_7b

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_75

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_75
    const-string v0, "PhoneME-CoreBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_7b
    move-exception p1

    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public appendNativeError()V
    .registers 5

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeLastError(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NATIVE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_2b
    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeMidletError(JI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_51

    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIDLET[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public button(Ljava/lang/String;)Landroid/widget/Button;
    .registers 5

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xe1

    const/16 v1, 0xe9

    const/16 v2, 0xe5

    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->flatButtonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setElevation(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    return-object v0
.end method

.method public commandDisplayLabel(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    iget-object v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    return-object p1

    :cond_14
    iget-object v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_24

    :cond_21
    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->longLabel:Ljava/lang/String;

    return-object p1

    :cond_24
    :goto_24
    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2b

    const-string v0, "OK"

    :cond_2b
    return-object v0
.end method

.method public compactSchedulerSnapshot(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3c

    :cond_9
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x384

    if-le v0, v1, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3b
    return-object p1

    :cond_3c
    :goto_3c
    const-string p1, "<empty>"

    return-object p1
.end method

.method public completeSyntheticTextBoxCommand(ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "LCDUI synthetic TextBox "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_10

    const-string p1, "Cancel"

    goto :goto_12

    :cond_10
    const-string p1, "OK"

    :goto_12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " command dispatched; awaiting VM authoritative screen item="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " valueLength="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz p2, :cond_42

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_42
    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz p1, :cond_5d

    iget p1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-gez p1, :cond_5d

    iget p1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-gez p1, :cond_5d

    iget-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz p1, :cond_55

    goto :goto_5d

    :cond_55
    const-string p1, "synthetic TextBox command"

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->restoreCanvasPresentation(Ljava/lang/String;)V

    const-string p1, "LCDUI Canvas framebuffer replay requested after synthetic TextBox command"

    goto :goto_8a

    :cond_5d
    :goto_5d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LCDUI synthetic TextBox completion did not alter authoritative presentation textBoxScreen="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " formScreen="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " list="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8a
    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/phoneme/corebridge/MainActivity$33;

    invoke-direct {p2, p0}, Lcom/phoneme/corebridge/MainActivity$33;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    const-wide/16 p3, 0x4b0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public copyLog()V
    .registers 4

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "PhoneME CoreBridge log"

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->fullLogText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "\u0110\u00e3 sao ch\u00e9p log \u0111\u1ea7y \u0111\u1ee7 hi\u1ec7n c\u00f3."

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method public detectMainClass(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_61

    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    return-object v0

    :cond_10
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object p1

    const/4 v2, 0x1

    :goto_15
    const/16 v3, 0x9

    if-gt v2, v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIDlet-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phoneme/corebridge/MainActivity;->extractClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    return-object v3

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3d
    const-string v2, "Main-Class"

    invoke-virtual {p1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_47

    move-object p1, v0

    goto :goto_53

    :cond_47
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_53
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_57

    return-object p1

    :catchall_57
    move-exception p1

    :try_start_58
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v1

    :try_start_5d
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw p1
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61

    :catch_61
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchNativeScreenCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const-string v1, " commandId="

    if-eqz v0, :cond_125

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isHostStopCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v0

    const-string v2, " type="

    const-string v3, " label="

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    const-string v4, ""

    if-nez v0, :cond_1a

    move-object v0, v4

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    if-eqz v0, :cond_25

    move-object v4, v0

    :cond_25
    move-object v0, v4

    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Program List D\u1eebng: no focused clone to stop commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_4f
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->findFocusedRow()Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LCDUI Program List D\u1eebng dispatched to native launcher programKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    if-eqz v5, :cond_a0

    iget-wide v3, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_92

    goto :goto_a0

    :cond_92
    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/phoneme/corebridge/MainActivity$54;

    move-object v1, v8

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/phoneme/corebridge/MainActivity$54;-><init>(Lcom/phoneme/corebridge/MainActivity;JLcom/phoneme/corebridge/MainActivity$ChoiceRowState;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a5

    :cond_a0
    :goto_a0
    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->selectFormCommand(I)V

    :goto_a5
    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$55;

    invoke-direct {v1, p0, v0}, Lcom/phoneme/corebridge/MainActivity$55;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_b2
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isHostRunCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v0

    if-eqz v0, :cond_125

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->findFocusedRow()Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;

    move-result-object v0

    if-nez v0, :cond_eb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Program List Ch\u1ea1y: no focused row found key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_eb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCDUI Program List Ch\u1ea1y intercepted for programKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->selectListRow(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V

    return-void

    :cond_125
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isGameTerminalExitCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->armPendingTerminalIdentity(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    :cond_12e
    iget v2, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->selectFormCommand(I)V

    if-eqz v0, :cond_155

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI game Exit dispatched; waiting for MIDlet destruction identity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_173

    :cond_155
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isProgramListCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v0

    if-nez v0, :cond_16e

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->isListExitCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result p1

    if-eqz p1, :cond_16d

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$56;

    invoke-direct {v0, p0}, Lcom/phoneme/corebridge/MainActivity$56;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    const-wide/16 v1, 0x28a

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16d
    return-void

    :cond_16e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    const-string p1, "LCDUI host Program List navigation armed from native screen"

    :goto_173
    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method public dp(I)I
    .registers 3

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public findEditorActionCommand()I
    .registers 12

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->visibleTextBoxCommands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    iget v0, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    return v0

    :cond_1c
    const-string v1, "done"

    const-string v2, "ok"

    const-string v3, "xong"

    const-string v4, "accept"

    const-string v5, "save"

    const-string v6, "submit"

    const-string v7, "\u0111\u0103ng nh\u1eadp"

    const-string v8, "login"

    const-string v9, "ti\u1ebfp t\u1ee5c"

    const-string v10, "x\u00e1c nh\u1eadn"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->findCommand([Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3b

    return v0

    :cond_3b
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->visibleTextBoxCommands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_43

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_43

    iget v2, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_43

    iget v0, v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->id:I

    return v0

    :cond_61
    const/4 v0, -0x1

    return v0
.end method

.method public handleFloatingMenuAction(I)V
    .registers 4

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->requestLogExport()V

    return-void

    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->showHostKeyboard()V

    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionPresented:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->returnToLauncher()V

    return-void

    :cond_1c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1f
    return-void
.end method

.method public handleLcdUiEvent([Ljava/lang/Object;)V
    .registers 38

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    array-length v0, v10

    const/16 v1, 0xd

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    const/4 v11, 0x0

    aget-object v0, v10, v11

    invoke-static {v0}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v12

    const/4 v0, 0x1

    aget-object v2, v10, v0

    invoke-static {v2}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v8

    const/4 v2, 0x2

    aget-object v3, v10, v2

    invoke-static {v3}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v13

    const/4 v3, 0x3

    aget-object v4, v10, v3

    invoke-static {v4}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v14

    const/4 v4, 0x4

    aget-object v5, v10, v4

    invoke-static {v5}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v15

    const/4 v5, 0x5

    aget-object v6, v10, v5

    invoke-static {v6}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v7

    const/4 v6, 0x6

    aget-object v6, v10, v6

    invoke-static {v6}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v6

    const/4 v1, 0x7

    aget-object v17, v10, v1

    invoke-static/range {v17 .. v17}, Lcom/phoneme/corebridge/MainActivity;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v11

    const/16 v19, 0xb

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Lcom/phoneme/corebridge/MainActivity;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v19, 0xc

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Lcom/phoneme/corebridge/MainActivity;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, " arg2="

    const-string v4, " arg1="

    const-string v10, " arg0="

    move/from16 v22, v11

    const-string v11, " arg3="

    if-eq v12, v3, :cond_6c

    const/4 v3, 0x4

    if-eq v12, v3, :cond_6c

    const/4 v3, 0x5

    if-ne v12, v3, :cond_69

    goto :goto_6c

    :cond_69
    move/from16 v24, v15

    goto :goto_c6

    :cond_6c
    :goto_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v15

    const-string v15, "LCDUI raw screen event kind="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " id="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " componentType="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " title="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :goto_c6
    const-string v3, ""

    if-nez v0, :cond_cc

    move-object v15, v3

    goto :goto_cd

    :cond_cc
    move-object v15, v0

    :goto_cd
    move-object/from16 v25, v11

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v15

    if-nez v12, :cond_e5

    const-string v15, "destruction"

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_e5

    move-object/from16 v27, v11

    const/4 v15, 0x1

    goto :goto_e8

    :cond_e5
    move-object/from16 v27, v11

    const/4 v15, 0x0

    :goto_e8
    const-string v11, " programKey="

    move/from16 v28, v1

    const/4 v1, 0x1

    if-eq v12, v1, :cond_1020

    if-eqz v15, :cond_f3

    goto/16 :goto_1020

    :cond_f3
    const/4 v1, 0x3

    if-ne v12, v1, :cond_100

    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v1

    const/16 v15, -0x3ee

    if-ne v1, v15, :cond_100

    const/4 v1, 0x1

    goto :goto_101

    :cond_100
    const/4 v1, 0x0

    :goto_101
    if-eqz v1, :cond_113

    iget-object v15, v9, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    move-object/from16 v29, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_115

    const/4 v5, 0x1

    goto :goto_116

    :cond_113
    move-object/from16 v29, v5

    :cond_115
    const/4 v5, 0x0

    :goto_116
    invoke-direct {v9, v14}, Lcom/phoneme/corebridge/MainActivity;->isAlertComponentType(I)Z

    move-result v15

    if-nez v15, :cond_129

    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v30, v4

    const/16 v4, -0x3f1

    if-ne v15, v4, :cond_127

    goto :goto_12b

    :cond_127
    const/4 v4, 0x0

    goto :goto_12c

    :cond_129
    move-object/from16 v30, v4

    :goto_12b
    const/4 v4, 0x1

    :goto_12c
    const-string v15, " list="

    move-object/from16 v31, v10

    const/4 v10, 0x4

    if-ne v12, v10, :cond_419

    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->resolveCurrentRunningProgramKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14a

    iget-object v5, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-direct {v9, v5}, Lcom/phoneme/corebridge/MainActivity;->isRunningProgramKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14a

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    :cond_14a
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_177

    iget-object v5, v9, Lcom/phoneme/corebridge/MainActivity;->screenIdToProgramKey:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LCDUI screen identity mapped screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_177
    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_18f

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {v9, v8, v2, v0}, Lcom/phoneme/corebridge/MainActivity;->renderAlertScreen(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18f
    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v1, 0x16

    if-eq v14, v1, :cond_3a4

    if-eqz v0, :cond_1aa

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1aa

    goto/16 :goto_3a4

    :cond_1aa
    const/16 v1, 0x17

    if-ne v14, v1, :cond_235

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_20f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI List update finalizing arrival before render id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostNavigationArmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " canvasPresented="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->finalizeProgramListArrival()V

    const-string v0, "LCDUI screen shown kind=List update"

    invoke-direct {v9, v8, v2, v0}, Lcom/phoneme/corebridge/MainActivity;->renderNativeListScreen(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20f
    if-eqz v0, :cond_22f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen shown kind=TextBox retained id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_22f
    const-string v0, "LCDUI screen shown kind=Form"

    invoke-virtual {v9, v8, v2, v0}, Lcom/phoneme/corebridge/MainActivity;->renderLegacyFormScreen(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_235
    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-eq v8, v1, :cond_2cc

    if-eqz v0, :cond_242

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2cc

    :cond_242
    if-eqz v0, :cond_24c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_258

    goto :goto_26d

    :cond_24c
    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26d

    :cond_258
    if-nez v0, :cond_25e

    invoke-direct {v9, v8, v2}, Lcom/phoneme/corebridge/MainActivity;->deferUnknownScreenShown(ILjava/lang/String;)V

    return-void

    :cond_25e
    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v0, "LCDUI screen shown kind=Form"

    invoke-virtual {v9, v8, v2, v0}, Lcom/phoneme/corebridge/MainActivity;->renderLegacyFormScreen(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26d
    :goto_26d
    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->finalizeProgramListArrival()V

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v1, -0x1

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iget-object v4, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput v8, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->ensureFormOverlay()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-nez v2, :cond_2a5

    move-object v2, v3

    :cond_2a5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen shown kind=List id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_2cc
    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->isFreshRestartTextBoxEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2d3

    return-void

    :cond_2d3
    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    if-eqz v0, :cond_2e0

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    if-eq v8, v0, :cond_2e0

    const-string v0, "TextBox"

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->finishSyntheticTextBoxHandoff(Ljava/lang/String;)V

    :cond_2e0
    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->isResumedTextBoxEvent(I)Z

    move-result v0

    if-nez v0, :cond_2ec

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    if-ltz v1, :cond_2ec

    if-eq v8, v1, :cond_2f6

    :cond_2ec
    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    if-eqz v1, :cond_323

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    if-nez v1, :cond_323

    if-nez v0, :cond_323

    :cond_2f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen shown TextBox ignored after Programs List id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " staleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_323
    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v1, :cond_352

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v1, :cond_352

    if-nez v0, :cond_352

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    if-nez v1, :cond_352

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen shown TextBox ignored; List is current id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_352
    if-eqz v0, :cond_377

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    const/4 v1, -0x1

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI resumed TextBox screen accepted id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    const/4 v1, -0x1

    goto :goto_37f

    :cond_377
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    const/4 v1, -0x1

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    :goto_37f
    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->ensureTextBoxOverlay()V

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen shown kind=TextBox id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_3a4
    :goto_3a4
    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->markFreshRestartCanvasPresented()V

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_3c6

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->ignoreStaleScreenEventsAfterDestruction:Z

    if-eqz v0, :cond_3c6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI stale Canvas event ignored after destruction id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_3c6
    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    const/4 v0, -0x1

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    const-string v0, "SCREEN_SHOWN"

    invoke-direct {v9, v8, v0}, Lcom/phoneme/corebridge/MainActivity;->presentCanvasScreenFromNativeEvent(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen shown kind=Canvas id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    if-eqz v0, :cond_415

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->finishSyntheticTextBoxHandoffOnCanvas()V

    goto :goto_418

    :cond_415
    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->restoreTextBoxAfterProgramList()V

    :goto_418
    return-void

    :cond_419
    const/4 v4, 0x3

    if-ne v12, v4, :cond_4d5

    const/16 v4, 0x16

    if-ne v14, v4, :cond_498

    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->markFreshRestartCanvasPresented()V

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_44e

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->ignoreStaleScreenEventsAfterDestruction:Z

    if-eqz v0, :cond_44e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI stale Canvas metadata ignored after destruction id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_44e
    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    const/4 v0, -0x1

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    const-string v0, "SCREEN_KIND_METADATA"

    invoke-direct {v9, v8, v0}, Lcom/phoneme/corebridge/MainActivity;->presentCanvasScreenFromNativeEvent(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen kind=Canvas id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    if-eqz v0, :cond_494

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->finishSyntheticTextBoxHandoffOnCanvas()V

    goto :goto_497

    :cond_494
    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->restoreTextBoxAfterProgramList()V

    :goto_497
    return-void

    :cond_498
    if-eqz v1, :cond_4d4

    const/4 v4, 0x3

    if-ne v7, v4, :cond_4d4

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->screenDetailsById:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_4b4

    move-object v0, v3

    :cond_4b4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen kind=Alert id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_4d4
    const/4 v4, 0x3

    :cond_4d5
    if-ne v12, v4, :cond_794

    if-nez v1, :cond_4dd

    const/16 v4, 0x17

    if-ne v14, v4, :cond_794

    :cond_4dd
    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5e6

    const/4 v0, 0x2

    if-ne v7, v0, :cond_5e6

    if-nez v5, :cond_5e6

    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->isFreshRestartTextBoxEvent(I)Z

    move-result v0

    if-eqz v0, :cond_4f7

    return-void

    :cond_4f7
    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    if-eqz v0, :cond_504

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    if-eq v8, v0, :cond_504

    const-string v0, "TextBox metadata"

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->finishSyntheticTextBoxHandoff(Ljava/lang/String;)V

    :cond_504
    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->isResumedTextBoxEvent(I)Z

    move-result v0

    if-nez v0, :cond_510

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    if-ltz v1, :cond_510

    if-eq v8, v1, :cond_51a

    :cond_510
    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    if-eqz v1, :cond_547

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    if-nez v1, :cond_547

    if-nez v0, :cond_547

    :cond_51a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox metadata ignored after Programs List id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " staleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_547
    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v1, :cond_576

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v1, :cond_576

    if-nez v0, :cond_576

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    if-nez v1, :cond_576

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox metadata ignored; List is current id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_576
    if-eqz v0, :cond_59b

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    const/4 v1, -0x1

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCDUI resumed TextBox metadata accepted id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    const/4 v1, -0x1

    goto :goto_5a3

    :cond_59b
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    const/4 v1, -0x1

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    :goto_5a3
    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    iput v8, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-nez v2, :cond_5d4

    goto :goto_5d8

    :cond_5d4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_5d8
    iput-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->ensureTextBoxOverlay()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen kind=TextBox id="

    goto/16 :goto_784

    :cond_5e6
    if-eqz v1, :cond_64e

    const/4 v0, 0x1

    if-ne v7, v0, :cond_64e

    if-nez v5, :cond_64e

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->finalizeProgramListArrival()V

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v1, -0x1

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iput v1, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iput v8, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->ensureFormOverlay()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-nez v2, :cond_635

    move-object v2, v3

    :cond_635
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen kind=List id="

    goto/16 :goto_784

    :cond_64e
    const/16 v0, 0x17

    if-ne v14, v0, :cond_735

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6aa

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6aa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI List metadata update finalizing arrival before render id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostNavigationArmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " canvasPresented="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->finalizeProgramListArrival()V

    const-string v0, "LCDUI screen kind=List update"

    invoke-direct {v9, v8, v2, v0}, Lcom/phoneme/corebridge/MainActivity;->renderNativeListScreen(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6aa
    if-eqz v0, :cond_6ca

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6ca

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen kind=TextBox retained id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_6ca
    const/4 v0, 0x0

    if-nez v5, :cond_6cf

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    :cond_6cf
    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->explicitFormScreenIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-eq v0, v8, :cond_701

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_701
    invoke-direct {v9, v8}, Lcom/phoneme/corebridge/MainActivity;->restoreCachedFormItems(I)V

    iput v8, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->ensureFormOverlay()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_71c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_71d

    :cond_71c
    move-object v2, v3

    :cond_71d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI screen kind=Form id="

    goto :goto_784

    :cond_735
    if-nez v5, :cond_767

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-ne v8, v0, :cond_745

    const/4 v0, -0x1

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    goto :goto_746

    :cond_745
    const/4 v0, -0x1

    :goto_746
    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-ne v8, v1, :cond_766

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    :cond_766
    return-void

    :cond_767
    const/4 v0, 0x0

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_76f

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_76f
    const/4 v1, 0x1

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form focus metadata index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " form="

    :goto_784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_794
    const/4 v1, 0x1

    const/16 v4, 0xc

    if-ne v12, v4, :cond_842

    invoke-direct {v9, v8, v13}, Lcom/phoneme/corebridge/MainActivity;->resolveFormChoiceParent(II)I

    move-result v3

    if-lez v3, :cond_7a9

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_7a7

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-eq v3, v0, :cond_7a9

    :cond_7a7
    move v0, v1

    goto :goto_7aa

    :cond_7a9
    const/4 v0, 0x0

    :goto_7aa
    if-eqz v0, :cond_824

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCDUI Form choice row rawParent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " resolvedParent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " component="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " row="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " selected="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_7ef

    move v4, v1

    goto :goto_7f0

    :cond_7ef
    const/4 v4, 0x0

    :goto_7f0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " imageKey="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " listVisible="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    if-eqz v7, :cond_817

    move v4, v1

    goto :goto_818

    :cond_817
    const/4 v4, 0x0

    :goto_818
    move-object/from16 v0, p0

    move v1, v8

    move-object v11, v2

    move v2, v3

    move v3, v10

    move-object v6, v11

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/phoneme/corebridge/MainActivity;->updateFormChoiceRow(IIIZILjava/lang/String;I)V

    return-void

    :cond_824
    move-object v11, v2

    move/from16 v10, v24

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_841

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v0, :cond_841

    if-eqz v7, :cond_833

    move v3, v1

    goto :goto_834

    :cond_833
    const/4 v3, 0x0

    :goto_834
    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move-object v5, v11

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/phoneme/corebridge/MainActivity;->updateListChoiceRow(IIZILjava/lang/String;I)V

    :cond_841
    return-void

    :cond_842
    move-object v11, v2

    move/from16 v5, v22

    move/from16 v10, v24

    const/16 v2, 0xd

    if-ne v12, v2, :cond_857

    iget-boolean v4, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v4, :cond_857

    iget v4, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v4, :cond_857

    invoke-direct {v9, v8, v10}, Lcom/phoneme/corebridge/MainActivity;->clearListChoiceRow(II)V

    return-void

    :cond_857
    if-ne v12, v2, :cond_8ec

    iget-boolean v2, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-nez v2, :cond_8ec

    invoke-direct {v9, v8, v13}, Lcom/phoneme/corebridge/MainActivity;->resolveFormChoiceParent(II)I

    move-result v0

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceRowsCacheByParent:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    iget-object v2, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v1, :cond_894

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_894

    if-gez v10, :cond_891

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_894

    :cond_891
    invoke-direct {v9, v3, v10}, Lcom/phoneme/corebridge/MainActivity;->removeFormChoiceRows(Ljava/util/ArrayList;I)V

    :cond_894
    :goto_894
    if-eqz v2, :cond_8ac

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-ne v0, v1, :cond_8ac

    if-gez v10, :cond_8a6

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a9

    :cond_8a6
    invoke-direct {v9, v2, v10}, Lcom/phoneme/corebridge/MainActivity;->removeFormChoiceRows(Ljava/util/ArrayList;I)V

    :goto_8a9
    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    :cond_8ac
    if-gez v10, :cond_8b7

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->formChoiceParentByComponent:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI Form choice delete rawParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolvedParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_8ec
    const/16 v2, 0xe

    if-ne v12, v2, :cond_95e

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->commandOwnerScreenForEvent()I

    move-result v0

    if-lez v0, :cond_8f9

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    :cond_8f9
    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_90e

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_90e

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90e

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->snapshotTextBoxCommands()V

    :cond_90e
    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI command reset owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activeAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activeCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " form="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildTextBoxCommands()V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormCommands()V

    return-void

    :cond_95e
    const/16 v2, 0xf

    const-string v4, " type="

    if-ne v12, v2, :cond_9cd

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->commandOwnerScreenForEvent()I

    move-result v1

    if-lez v1, :cond_971

    iget v2, v9, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    if-eq v1, v2, :cond_971

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->activateCommandScreen(I)V

    :cond_971
    new-instance v1, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v19

    move-object v13, v1

    move v14, v8

    move-object v15, v11

    move-object/from16 v16, v0

    move/from16 v17, v7

    move/from16 v18, v6

    invoke-direct/range {v13 .. v19}, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->replaceCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI command add owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activeAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildTextBoxCommands()V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormCommands()V

    return-void

    :cond_9cd
    const/4 v15, 0x5

    if-ne v12, v15, :cond_9d9

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_9d9
    if-ne v12, v15, :cond_a1f

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-ne v8, v1, :cond_a1d

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-eqz v0, :cond_a02

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    if-eqz v0, :cond_a02

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    if-ne v8, v0, :cond_a02

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI stale TextBox hidden ignored while synthetic resume id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_a02
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox screen hidden id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    return-void

    :cond_a1d
    const/4 v1, 0x5

    goto :goto_a20

    :cond_a1f
    move v1, v15

    :goto_a20
    if-ne v12, v1, :cond_aae

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-ne v8, v1, :cond_aae

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    if-ne v8, v0, :cond_a65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Alert screen hidden id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commandOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    if-ne v1, v8, :cond_a65

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommandsByScreen:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->lcdUiCommands:Ljava/util/ArrayList;

    :cond_a65
    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    if-eqz v0, :cond_a84

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_a84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI List hidden ignored while waiting for destination id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_a84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI native screen hidden id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput v0, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    return-void

    :cond_aae
    const/16 v2, 0x8

    const-string v15, " parent="

    const/4 v1, 0x7

    if-eq v12, v1, :cond_ad0

    if-eq v12, v2, :cond_ad0

    const/16 v2, 0x9

    if-ne v12, v2, :cond_abc

    goto :goto_ad0

    :cond_abc
    move-object v2, v0

    move v0, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move v4, v6

    move v6, v8

    move v8, v10

    move v10, v12

    move-object/from16 v5, v25

    move/from16 v1, v28

    move-object/from16 v12, v30

    move-object/from16 v3, v31

    goto/16 :goto_c39

    :cond_ad0
    :goto_ad0
    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v21, v3

    const/4 v3, 0x6

    if-eq v14, v3, :cond_aee

    if-eq v14, v1, :cond_aee

    const/16 v1, 0xf

    if-ne v14, v1, :cond_ae0

    goto :goto_aee

    :cond_ae0
    move/from16 v23, v5

    move/from16 v24, v10

    move/from16 v22, v12

    move-object/from16 v10, v29

    move-object/from16 v12, v30

    move-object/from16 v3, v31

    goto/16 :goto_b7c

    :cond_aee
    :goto_aee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI item event kind="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " item="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v31

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v22, v12

    move-object/from16 v12, v30

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v24, v10

    move-object/from16 v10, v29

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v23, v5

    move/from16 v5, v28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v25

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " labelLength="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v11, :cond_b5b

    const/4 v5, 0x0

    goto :goto_b5f

    :cond_b5b
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    :goto_b5f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " valueLength="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_b6d

    const/4 v5, 0x0

    goto :goto_b71

    :cond_b6d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :goto_b71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :goto_b7c
    const/16 v1, -0x3ed

    if-ne v2, v1, :cond_bcd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI item style event ignored item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v5, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_bcd
    move-object/from16 v5, v25

    move/from16 v1, v28

    iget-boolean v2, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v2, :cond_c2c

    if-lez v13, :cond_c2c

    iget v2, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-eq v13, v2, :cond_c2c

    if-eqz v11, :cond_c2c

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c2c

    move-object v2, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object v10, v2

    move v2, v13

    move/from16 v3, v24

    move-object v12, v4

    move v4, v14

    move-object v5, v11

    move v11, v6

    move-object v6, v10

    move v10, v8

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/phoneme/corebridge/MainActivity;->rememberFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI stale labeled Form item cached while List active item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v8, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_c2c
    move-object v2, v0

    move-object v0, v4

    move v4, v6

    move v6, v8

    move/from16 v8, v24

    move-object/from16 v29, v10

    move/from16 v10, v22

    move-object/from16 v22, v0

    const/4 v0, 0x7

    :goto_c39
    if-eq v10, v0, :cond_c43

    const/16 v0, 0x8

    if-eq v10, v0, :cond_c43

    const/16 v0, 0x9

    if-ne v10, v0, :cond_c5e

    :cond_c43
    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-lez v0, :cond_c5e

    if-ne v13, v0, :cond_c5e

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_c51

    invoke-direct {v9, v6, v14}, Lcom/phoneme/corebridge/MainActivity;->updateListChoiceType(II)V

    return-void

    :cond_c51
    move-object/from16 v0, p0

    move v1, v6

    move-object v6, v2

    move v2, v13

    move v3, v8

    move v8, v4

    move v4, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v8}, Lcom/phoneme/corebridge/MainActivity;->updateFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_c5e
    const/4 v0, 0x7

    if-eq v10, v0, :cond_c7f

    const/16 v0, 0x8

    if-eq v10, v0, :cond_c7f

    const/16 v0, 0x9

    if-ne v10, v0, :cond_c6a

    goto :goto_c7f

    :cond_c6a
    move/from16 v28, v1

    move-object/from16 v20, v2

    move-object/from16 v31, v3

    move/from16 v21, v4

    move-object/from16 v34, v5

    move/from16 v23, v7

    move v3, v8

    move-object/from16 v32, v12

    move-object/from16 v33, v29

    const/4 v0, 0x7

    move v12, v6

    goto/16 :goto_f2f

    :cond_c7f
    :goto_c7f
    const/16 v0, 0xf

    if-ne v14, v0, :cond_f1c

    if-eqz v11, :cond_c8a

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_c8c

    :cond_c8a
    move-object/from16 v0, v21

    :goto_c8c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d61

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_cd9

    move-object/from16 v0, p0

    move v1, v6

    move-object v10, v2

    move v2, v13

    move v3, v8

    move v12, v4

    move v4, v14

    move-object v5, v11

    move v14, v6

    move-object v6, v10

    move v10, v8

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/phoneme/corebridge/MainActivity;->rememberFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI stale Form TextField cached while List active item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_cd9
    move-object v10, v2

    move v12, v4

    move/from16 v35, v8

    move v8, v6

    move/from16 v6, v35

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-eq v0, v13, :cond_d1c

    move-object/from16 v0, p0

    move v1, v8

    move v2, v13

    move v3, v6

    move v4, v14

    move-object v5, v11

    move-object v6, v10

    move v10, v8

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/phoneme/corebridge/MainActivity;->rememberFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form item cached for pending screen item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activeForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_d1c
    move-object/from16 v0, p0

    move v1, v8

    move v2, v13

    move v3, v6

    move v4, v14

    move-object v5, v11

    move v14, v6

    move-object v6, v10

    move v9, v8

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/phoneme/corebridge/MainActivity;->updateFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form TextField accepted item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " valueLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_d61
    move v14, v8

    move v8, v6

    move v6, v4

    move-object v4, v2

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-lez v0, :cond_d6b

    if-eq v13, v0, :cond_d92

    :cond_d6b
    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxCommandPending:Z

    if-eqz v0, :cond_ef4

    if-lez v13, :cond_ef4

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->syntheticTextBoxSourceScreenId:I

    if-eq v13, v0, :cond_ef4

    const-string v0, "TextBox item"

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->finishSyntheticTextBoxHandoff(Ljava/lang/String;)V

    iput v13, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI authoritative TextBox item owner adopted parent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_d92
    invoke-direct {v9, v11, v6}, Lcom/phoneme/corebridge/MainActivity;->effectiveTextBoxConstraints(Ljava/lang/String;I)I

    move-result v16

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_ec9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_ec9

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    if-ne v8, v0, :cond_ec9

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxParentId:I

    if-ne v13, v0, :cond_ec9

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxItemIndex:I

    if-ne v14, v0, :cond_ec9

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->currentTextBoxScreenId()I

    move-result v2

    if-ne v0, v2, :cond_ec9

    if-lez v7, :cond_db8

    move v0, v7

    goto :goto_dba

    :cond_db8
    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    :goto_dba
    if-nez v6, :cond_dc1

    iget v2, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    move-object/from16 v31, v3

    goto :goto_dc5

    :cond_dc1
    move-object/from16 v31, v3

    move/from16 v2, v16

    :goto_dc5
    iget-boolean v3, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    if-nez v3, :cond_e05

    iget v3, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxMaxSize:I

    if-ne v0, v3, :cond_dd1

    iget v3, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxConstraints:I

    if-eq v2, v3, :cond_e05

    :cond_dd1
    invoke-direct {v9, v0, v2}, Lcom/phoneme/corebridge/MainActivity;->applyTextBoxMetadata(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v5

    const-string v5, "LCDUI TextBox metadata merged item="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " max="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " constraints=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    goto :goto_e07

    :cond_e05
    move-object/from16 v25, v5

    :goto_e07
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e27

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxTrustedValue:Ljava/lang/String;

    if-eqz v0, :cond_e27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e27

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_e27

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_e27

    const/4 v0, 0x1

    goto :goto_e28

    :cond_e27
    const/4 v0, 0x0

    :goto_e28
    iget-boolean v2, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    if-nez v2, :cond_e78

    if-eqz v0, :cond_e2f

    goto :goto_e78

    :cond_e2f
    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_eb9

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb9

    invoke-direct {v9, v4, v1}, Lcom/phoneme/corebridge/MainActivity;->updateTextBoxEditorFromVm(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI TextBox VM value accepted item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " detailLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " caret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " stateKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_eb2

    :cond_e78
    :goto_e78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI TextBox item update retained "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxEditorDirty:Z

    if-eqz v2, :cond_e8a

    const-string v2, "dirty"

    goto :goto_e8c

    :cond_e8a
    const-string v2, "stale-empty"

    :goto_e8c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " editor item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " detailLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " caret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_eb2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_eb9
    move/from16 v28, v1

    move-object/from16 v20, v4

    move/from16 v21, v6

    move/from16 v23, v7

    move-object/from16 v32, v12

    move-object/from16 v34, v25

    move-object/from16 v33, v29

    move v12, v8

    goto :goto_ef1

    :cond_ec9
    move-object/from16 v31, v3

    move-object/from16 v25, v5

    move-object/from16 v0, p0

    move v5, v1

    move v1, v8

    move v2, v13

    move-object/from16 v30, v12

    move-object/from16 v12, v31

    move v3, v14

    move-object/from16 v20, v4

    move-object/from16 v32, v30

    move-object v4, v11

    move/from16 v28, v5

    move-object/from16 v34, v25

    move-object/from16 v33, v29

    move-object/from16 v5, v20

    move/from16 v21, v6

    move v6, v7

    move/from16 v23, v7

    move/from16 v7, v16

    move v12, v8

    move/from16 v8, v28

    invoke-direct/range {v0 .. v8}, Lcom/phoneme/corebridge/MainActivity;->showTextBoxOverlay(IIILjava/lang/String;Ljava/lang/String;III)V

    :goto_ef1
    move v3, v14

    goto/16 :goto_f80

    :cond_ef4
    move v12, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI unlabeled TextField ignored item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_f1c
    move/from16 v28, v1

    move-object/from16 v20, v2

    move-object/from16 v31, v3

    move/from16 v21, v4

    move-object/from16 v34, v5

    move/from16 v23, v7

    move v3, v8

    move-object/from16 v32, v12

    move-object/from16 v33, v29

    move v12, v6

    const/4 v0, 0x7

    :goto_f2f
    if-eq v10, v0, :cond_f39

    const/16 v0, 0x8

    if-eq v10, v0, :cond_f39

    const/16 v0, 0x9

    if-ne v10, v0, :cond_f80

    :cond_f39
    if-lez v13, :cond_f80

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-eq v13, v0, :cond_f80

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    if-eq v13, v0, :cond_f80

    const/16 v0, 0xf

    if-eq v14, v0, :cond_f80

    move-object/from16 v8, v22

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v4, v14

    move-object v5, v11

    move-object/from16 v6, v20

    move/from16 v7, v23

    move-object v10, v8

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/phoneme/corebridge/MainActivity;->rememberFormItem(IIIILjava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI Form item cached for pending screen item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_f80
    :goto_f80
    const/16 v0, 0x64

    if-ne v10, v0, :cond_ff8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI action error kind=100 target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->arg3([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->appendNativeError()V

    goto :goto_101f

    :cond_ff8
    const/16 v0, 0xa

    if-ne v10, v0, :cond_101f

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    if-ne v12, v0, :cond_101f

    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-eqz v0, :cond_101b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI stale TextBox item hidden ignored while synthetic resume item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    goto :goto_101f

    :cond_101b
    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    :cond_101f
    :goto_101f
    return-void

    :cond_1020
    :goto_1020
    move-object/from16 v21, v3

    move v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "destruction"

    move-object/from16 v2, v27

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v1, :cond_1078

    if-nez v2, :cond_1078

    if-eqz v3, :cond_1049

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1078

    :cond_1049
    iget-object v4, v9, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    if-eqz v4, :cond_1078

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1078

    iget-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    iget-object v4, v9, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCDUI lifecycle app mapped id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_1078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCDUI MIDlet lifecycle kind=1 id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " destroyed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " paused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " detail="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, v26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_10b0

    move-object/from16 v4, v21

    goto :goto_10b1

    :cond_10b0
    move-object v4, v3

    :goto_10b1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    if-eqz v1, :cond_1251

    invoke-direct {v9, v3}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10cb

    move-object/from16 v2, v21

    goto :goto_10cd

    :cond_10cb
    const-string v2, "appId"

    :goto_10cd
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10e4

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10e2

    move-object/from16 v2, v21

    goto :goto_10e4

    :cond_10e2
    const-string v2, "active"

    :cond_10e4
    :goto_10e4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10fb

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10f9

    move-object/from16 v2, v21

    goto :goto_10fb

    :cond_10f9
    const-string v2, "lastForeground"

    :cond_10fb
    :goto_10fb
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1112

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeyCandidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1110

    move-object/from16 v2, v21

    goto :goto_1112

    :cond_1110
    const-string v2, "resumeTextBox"

    :cond_1112
    :goto_1112
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1129

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->activeCommandScreenId:I

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->resolveScreenProgramKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1127

    move-object/from16 v2, v21

    goto :goto_1129

    :cond_1127
    const-string v2, "screen(activeCommand)"

    :cond_1129
    :goto_1129
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1140

    iget v1, v9, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    invoke-direct {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->resolveScreenProgramKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_113e

    move-object/from16 v2, v21

    goto :goto_1140

    :cond_113e
    const-string v2, "screen(form)"

    :cond_1140
    :goto_1140
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1152

    iget-object v3, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-direct {v9, v3}, Lcom/phoneme/corebridge/MainActivity;->isRunningProgramKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1152

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    const-string v2, "pending"

    :cond_1152
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1168

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->resolveCurrentRunningProgramKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1165

    move-object/from16 v3, v21

    goto :goto_1167

    :cond_1165
    const-string v3, "soleRunning"

    :goto_1167
    move-object v2, v3

    :cond_1168
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11be

    iget-boolean v3, v9, Lcom/phoneme/corebridge/MainActivity;->directInstalledSession:Z

    if-eqz v3, :cond_11a6

    iget-boolean v3, v9, Lcom/phoneme/corebridge/MainActivity;->gameSessionPresented:Z

    if-eqz v3, :cond_11a6

    iget-boolean v3, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-nez v3, :cond_11a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCDUI direct runtime destroyed without programKey mapping id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; returning host to app shell"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget v3, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    if-lez v3, :cond_119f

    const-string v3, "MIDlet lifecycle destruction"

    invoke-direct {v9, v3}, Lcom/phoneme/corebridge/MainActivity;->restoreAlertUnderlyingScreenAfterDestruction(Ljava/lang/String;)V

    :cond_119f
    invoke-virtual {v9}, Lcom/phoneme/corebridge/MainActivity;->returnToLauncher()V

    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    return-void

    :cond_11a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCDUI clone destroyed but no programKey mapping id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    goto :goto_1214

    :cond_11be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCDUI destruction identity resolved source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIDlet notified destruction source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v12, v3}, Lcom/phoneme/corebridge/MainActivity;->terminalizeCloneHostState(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxCanvasShown:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCDUI clone destroyed; marker and presentation state removed key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " source="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_1214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " runningKeys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v9, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    if-lez v0, :cond_123e

    const-string v0, "MIDlet lifecycle destruction"

    invoke-direct {v9, v0}, Lcom/phoneme/corebridge/MainActivity;->restoreAlertUnderlyingScreenAfterDestruction(Ljava/lang/String;)V

    return-void

    :cond_123e
    iget-boolean v0, v9, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_1251

    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1247

    goto :goto_1251

    :cond_1247
    iget-object v0, v9, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$57;

    invoke-direct {v1, v9}, Lcom/phoneme/corebridge/MainActivity$57;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1251
    :goto_1251
    return-void
.end method

.method public importGameToLibrary(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_117

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_117

    :cond_e
    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    if-nez v0, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->initializeGameLibrary()V

    :cond_15
    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v4, ""

    if-eqz v0, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->originalFileName:Ljava/lang/String;

    if-eqz p2, :cond_31

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_31
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-wide v4, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->size:J

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    iget-object v6, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->lastUsed:J

    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->saveGameLibrary()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Game \u0111\u00e3 c\u00f3 trong th\u01b0 vi\u1ec7n: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-object v0

    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_81

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    :cond_81
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_85
    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/phoneme/corebridge/MainActivity;->libraryStem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".jar"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/io/File;

    iget-object v0, v1, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    invoke-direct {v14, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_b2
    invoke-direct {v1, v2, v14}, Lcom/phoneme/corebridge/MainActivity;->copyGameFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    if-nez p3, :cond_bb

    move-object v9, v4

    goto :goto_bd

    :cond_bb
    move-object/from16 v9, p3

    :goto_bd
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v15
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c1} :catch_ef

    move-object v4, v0

    move-object v6, v7

    move-wide v10, v12

    move-object/from16 v17, v14

    move-wide v14, v15

    :try_start_c7
    invoke-direct/range {v4 .. v15}, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    iget-object v4, v1, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->saveGameLibrary()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0110\u00e3 l\u01b0u game v\u00e0o th\u01b0 vi\u1ec7n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ec} :catch_ed

    return-object v0

    :catch_ed
    move-exception v0

    goto :goto_f2

    :catch_ef
    move-exception v0

    move-object/from16 v17, v14

    :goto_f2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kh\u00f4ng th\u1ec3 l\u01b0u game v\u00e0o th\u01b0 vi\u1ec7n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    goto/16 :goto_1b

    :cond_117
    :goto_117
    const/4 v0, 0x0

    return-object v0
.end method

.method public label(Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 5

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method public loadGameLibrary()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->renderInstalledApps()V

    iget-object v1, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_252

    iget-object v2, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    if-nez v2, :cond_14

    goto/16 :goto_252

    :cond_14
    const-string v2, "count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v2, v3

    move v4, v2

    :goto_1d
    if-ge v2, v1, :cond_249

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jar_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_243

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_243

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryDir:Ljava/io/File;

    invoke-direct {v5, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_23f

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v8, v10, v14

    if-gtz v8, :cond_78

    goto/16 :goto_23f

    :cond_78
    iget-object v8, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v8, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "original_"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v8, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "class_"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v6, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "added_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    new-instance v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    iget-object v7, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "used_"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object v8, v6

    const/4 v3, 0x1

    move-wide/from16 v16, v17

    move-wide/from16 v18, v20

    invoke-direct/range {v8 .. v19}, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configured_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->configured:Z

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "width_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0x1000

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    iget-object v5, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "height_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aspect_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scale_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v7, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0xc8

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v5, 0x19

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v7, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scale_mode_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filter_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->imageFilter:Z

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->imageFilter:Z

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fullscreen_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->fullscreen:Z

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v6, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->fullscreen:Z

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_244

    :cond_23f
    :goto_23f
    move v5, v3

    const/4 v3, 0x1

    move v4, v3

    goto :goto_244

    :cond_243
    move v5, v3

    :goto_244
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto/16 :goto_1d

    :cond_249
    if-eqz v4, :cond_24e

    invoke-virtual/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->saveGameLibrary()V

    :cond_24e
    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->renderInstalledApps()V

    return-void

    :cond_252
    :goto_252
    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->renderInstalledApps()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa29

    if-ne p1, v0, :cond_7d

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7d

    if-eqz p3, :cond_7d

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_7d

    :cond_13
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :try_start_17
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_62

    if-eqz p2, :cond_4f

    :try_start_21
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->fullLogText()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0110\u00e3 t\u1ea1o file log \u0111\u1ea7y \u0111\u1ee7: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    if-eqz p2, :cond_7d

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_7d

    :catchall_4d
    move-exception p1

    goto :goto_57

    :cond_4f
    new-instance p1, Ljava/io/IOException;

    const-string p3, "OutputStream null"

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_4d

    :goto_57
    if-eqz p2, :cond_61

    :try_start_59
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception p2

    :try_start_5e
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    throw p1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_62

    :catch_62
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Kh\u00f4ng ghi \u0111\u01b0\u1ee3c file log: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameSessionPresented:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->returnToLauncher()V

    return-void

    :cond_8
    const-string v0, "Host Back ignored: VM has no Back authority"

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xf

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->openLiveLog()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->installCrashHandler()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->initializeGameLibrary()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->buildUi()V

    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "corebridge-media"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/phoneme/corebridge/CoreBridgeNative;->initializeMedia(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "\u1ee8ng d\u1ee5ng kh\u1edfi \u0111\u1ed9ng; ch\u1edd ch\u1ecdn JAR/JAD."

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Core C API: 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeApiVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->configureNativeRuntime()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->requestStoragePermissionIfNeeded()V

    return-void
.end method

.method protected onDestroy()V
    .registers 5

    const-string v0, "Activity destroying; preparing final diagnostics."

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->stopLcdUiPolling()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->stopRendering()V

    :cond_f
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeFlushDebugLog()V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeStop(J)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    :cond_2b
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->closeLiveLog()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x961

    if-eq p1, p2, :cond_8

    return-void

    :cond_8
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_12

    aget p1, p3, p2

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    move p1, p2

    :goto_13
    if-eqz p1, :cond_18

    const-string p3, "\u0110\u00e3 c\u1ea5p quy\u1ec1n truy c\u1eadp b\u1ed9 nh\u1edb."

    goto :goto_1a

    :cond_18
    const-string p3, "Ch\u01b0a \u0111\u01b0\u1ee3c c\u1ea5p quy\u1ec1n truy c\u1eadp b\u1ed9 nh\u1edb."

    :goto_1a
    invoke-virtual {p0, p3}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFileManager:Z

    if-eqz p3, :cond_28

    if-eqz p1, :cond_28

    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFileManager:Z

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->showFileManager()V

    :cond_28
    iput-boolean p2, p0, Lcom/phoneme/corebridge/MainActivity;->permissionDialogShown:Z

    return-void
.end method

.method public programKey(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_d

    :cond_5
    iget v0, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->componentId:I

    iget p1, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    invoke-direct {p0, v0, p1}, Lcom/phoneme/corebridge/MainActivity;->programKey(II)Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public rebuildFormOverlay()V
    .registers 2

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->formItemsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildListOverlay()V

    goto :goto_13

    :cond_10
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormItems()V

    :goto_13
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormCommands()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->updateLcdUiSoftInputMode()V

    return-void
.end method

.method public rememberTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxCurrentCarets:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public renderLegacyFormScreen(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->activeAlertScreenId:I

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v2, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    const-string v2, ""

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTextBoxTitle:Ljava/lang/String;

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    if-eq v3, p1, :cond_2c

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->formItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->formChoiceRows:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_2c
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->restoreCachedFormItems(I)V

    iput p1, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->displayableKinds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->listChoiceRows:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->ensureFormOverlay()V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->formTitleView:Landroid/widget/TextView;

    if-nez p2, :cond_4b

    move-object p2, v2

    :cond_4b
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method public requestLogExport()V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneME-CoreBridge-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd-HHmmss"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xa29

    :try_start_43
    invoke-virtual {p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_5e

    :catch_47
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kh\u00f4ng m\u1edf \u0111\u01b0\u1ee3c tr\u00ecnh l\u01b0u file log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :goto_5e
    return-void
.end method

.method public requestStoragePermission()V
    .registers 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x961

    invoke-virtual {p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public resolveLaunchFile(Ljava/io/File;)Ljava/io/File;
    .registers 9

    const-string v0, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c JAD: "

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    return-object p1

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_93

    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_a8

    :cond_32
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_74

    const-string v5, "MIDlet-Jar-URL"

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_69

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_69
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_70

    move-object v4, v1

    :cond_70
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v4

    :cond_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_27 .. :try_end_88} :catchall_89

    goto :goto_27

    :catchall_89
    move-exception v3

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v2

    :try_start_8f
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_92
    throw v3
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_93

    :catch_93
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :goto_a8
    return-object v1
.end method

.method public returnToLauncher()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    const-string v0, "LCDUI Back: kh\u00f4ng c\u00f3 command \u0111i\u1ec1u h\u01b0\u1edbng; d\u1eebng VM v\u00e0 quay v\u1ec1 m\u00e0n h\u00ecnh ch\u1ecdn \u1ee9ng d\u1ee5ng."

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxOverlay:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->hideTextBoxOverlay(Z)V

    :cond_16
    iget-wide v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_29

    invoke-static {v2, v3}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeIsRunning(J)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-wide v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v2, v3}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeStop(J)V

    :cond_29
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->stopLcdUiPolling()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->stopRendering()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v0, v1}, Lcom/phoneme/corebridge/GameSurfaceView;->setVisibility(I)V

    :cond_38
    invoke-direct {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->setGameSessionPresented(Z)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_44

    const-string v1, "S\u1eb5n s\u00e0ng; h\u00e3y ch\u1ecdn file JAR/JAD."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    return-void
.end method

.method public saveGameLibrary()V
    .registers 7

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    :goto_18
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1ac

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->id:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->originalFileName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jar_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->jarFileName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->mainClass:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->addedAt:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "used_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->lastUsed:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configured_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->configured:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aspect_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->keepAspect:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasScale:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasPosition:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale_mode_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->scaleMode:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->imageFilter:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fullscreen_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v2, v2, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->fullscreen:Z

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    :cond_1ac
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public selectFormCommand(I)V
    .registers 6

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    if-gez p1, :cond_b

    goto :goto_34

    :cond_b
    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->commandForId(I)Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->armPendingTerminalIdentity(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI Form command request id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/phoneme/corebridge/MainActivity$58;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/phoneme/corebridge/MainActivity$58;-><init>(Lcom/phoneme/corebridge/MainActivity;JI)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public selectListItemCommand(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;I)V
    .registers 11

    iget-wide v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI List item command request row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->rowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/phoneme/corebridge/MainActivity$59;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/phoneme/corebridge/MainActivity$59;-><init>(Lcom/phoneme/corebridge/MainActivity;JLcom/phoneme/corebridge/MainActivity$ChoiceRowState;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectListRow(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V
    .registers 13

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->ignoreStaleScreenEventsAfterDestruction:Z

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;->selected:Z

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->programKey(Lcom/phoneme/corebridge/MainActivity$ChoiceRowState;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKeys:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    iput-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKey:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartAwaitingCanvas:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartTextBoxGuardUntil:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LCDUI fresh clone restart armed selected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " staleTextBoxId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_4a
    iput-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->directInstalledSession:Z

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    iget-object v6, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LCDUI clone selected programKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; lifecycle app mapping will be captured from kind=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    if-nez v5, :cond_83

    invoke-direct {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->loadTextBoxResumeState(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    move v6, v3

    goto :goto_84

    :cond_83
    move v6, v2

    :goto_84
    if-nez v5, :cond_b7

    if-eqz v6, :cond_b7

    iget-boolean v7, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-eqz v7, :cond_8d

    goto :goto_b7

    :cond_8d
    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/phoneme/corebridge/MainActivity;->formScreenId:I

    iput-boolean v3, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hideFormOverlay()V

    invoke-direct {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->setNativeScreenVisible(Z)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->restoreTextBoxAfterProgramList()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI TextBox resumed immediately from per-clone record selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_136

    :cond_b7
    :goto_b7
    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz v7, :cond_be

    invoke-virtual {v7}, Lcom/phoneme/corebridge/GameSurfaceView;->prepareForCanvasSwitch()V

    :cond_be
    iget v7, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    iget-object v8, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxProgramKey:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    if-eqz v9, :cond_ed

    if-ltz v7, :cond_ed

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LCDUI TextBox resume deferred for clone without record selected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " source="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    iput v7, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    :cond_ed
    if-eqz v5, :cond_103

    iput-boolean v3, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI fresh restart waiting for Canvas selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_120

    :cond_103
    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iput-boolean v3, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LCDUI destination clone events accepted selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasTextBoxRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_120
    const-string v3, " staleId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    :goto_136
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/phoneme/corebridge/MainActivity$60;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/phoneme/corebridge/MainActivity$60;-><init>(Lcom/phoneme/corebridge/MainActivity;JLcom/phoneme/corebridge/MainActivity$ChoiceRowState;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectTextBoxCommand(I)V
    .registers 19

    move-object/from16 v14, p0

    move/from16 v11, p1

    iget-wide v0, v14, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_131

    if-ltz v11, :cond_131

    iget-boolean v0, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z

    if-nez v0, :cond_131

    iget v0, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    if-gez v0, :cond_18

    goto/16 :goto_131

    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/phoneme/corebridge/MainActivity;->commandForId(I)Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;

    move-result-object v13

    iget-boolean v0, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeSynthetic:Z

    if-eqz v0, :cond_24

    invoke-direct {v14, v13}, Lcom/phoneme/corebridge/MainActivity;->handleSyntheticTextBoxCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    return-void

    :cond_24
    invoke-direct {v14, v13}, Lcom/phoneme/corebridge/MainActivity;->isCancelCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v2, :cond_35

    invoke-direct {v14, v13}, Lcom/phoneme/corebridge/MainActivity;->isTextBoxConfirmCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_35

    :cond_33
    move v3, v1

    goto :goto_36

    :cond_35
    :goto_35
    move v3, v0

    :goto_36
    iget-boolean v4, v14, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxAfterProgramList:Z

    if-eqz v4, :cond_48

    invoke-direct {v14, v13}, Lcom/phoneme/corebridge/MainActivity;->isProgramListCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v4

    if-nez v4, :cond_48

    iget-object v4, v14, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    invoke-direct {v14, v4}, Lcom/phoneme/corebridge/MainActivity;->dropTextBoxResumeState(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    :cond_48
    if-eqz v3, :cond_62

    invoke-direct {v14, v13}, Lcom/phoneme/corebridge/MainActivity;->isProgramListCommand(Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)Z

    move-result v4

    if-eqz v4, :cond_62

    iput-boolean v1, v14, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    invoke-direct/range {p0 .. p0}, Lcom/phoneme/corebridge/MainActivity;->captureTextBoxResumeState()V

    iput-boolean v1, v14, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iget v4, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxScreenId:I

    iput v4, v14, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-boolean v0, v14, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    const-string v4, "LCDUI Programs List navigation armed; stale TextBox events suppressed"

    invoke-virtual {v14, v4}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    :cond_62
    iget-wide v4, v14, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    iget v6, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxComponentId:I

    iget-object v12, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxStateKey:Ljava/lang/String;

    iget-object v7, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    const-string v8, ""

    if-nez v7, :cond_70

    move-object v9, v8

    goto :goto_79

    :cond_70
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    :goto_79
    iget-object v7, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-nez v7, :cond_82

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_86

    :cond_82
    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    :goto_86
    if-gez v7, :cond_8c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    :cond_8c
    move v10, v7

    iget-object v7, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalValue:Ljava/lang/String;

    if-nez v7, :cond_92

    move-object v7, v8

    :cond_92
    iget v15, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxSessionOriginalCaret:I

    if-nez v2, :cond_99

    invoke-virtual {v14, v12, v9, v10}, Lcom/phoneme/corebridge/MainActivity;->rememberTextBoxValue(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_99
    iput-boolean v1, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxActionPending:Z

    iget-object v1, v14, Lcom/phoneme/corebridge/MainActivity;->textBoxEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_a2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI TextBox command request id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v13, :cond_bb

    iget-object v8, v13, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->label:Ljava/lang/String;

    :cond_bb
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v13, :cond_ca

    move v8, v1

    goto :goto_cc

    :cond_ca
    iget v8, v13, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->type:I

    :goto_cc
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " owner="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v13, :cond_da

    iget v1, v13, Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;->owner:I

    :cond_da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " textLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " navigation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stateKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v8, v14, Lcom/phoneme/corebridge/MainActivity;->lcdUiActionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$51;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v8

    move-object v8, v9

    move v9, v15

    move/from16 v11, p1

    invoke-direct/range {v0 .. v13}, Lcom/phoneme/corebridge/MainActivity$51;-><init>(Lcom/phoneme/corebridge/MainActivity;ZZJILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/phoneme/corebridge/MainActivity$LcdUiCommand;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_131
    :goto_131
    return-void
.end method

.method public selectTextBoxEditorCommand()Z
    .registers 2

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->findEditorActionCommand()I

    move-result v0

    if-gez v0, :cond_d

    const-string v0, "LCDUI TextBox IME action kh\u00f4ng t\u00ecm th\u1ea5y command x\u00e1c nh\u1eadn."

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_d
    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->selectTextBoxCommand(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public showFileManager()V
    .registers 3

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->hasStoragePermission()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingFileManager:Z

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->requestStoragePermissionIfNeeded()V

    goto :goto_26

    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1e
    new-instance v1, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;

    invoke-direct {v1, p0, v0}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/phoneme/corebridge/MainActivity$FileManagerDialog;->show()V

    :goto_26
    return-void
.end method

.method public showGameLibrary()V
    .registers 9

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->loadGameLibrary()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x16

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "Nh\u1eadp game m\u1edbi t\u1eeb file manager"

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Lcom/phoneme/corebridge/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Th\u01b0 vi\u1ec7n game"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/phoneme/corebridge/MainActivity$61;

    invoke-direct {v4, p0, v0}, Lcom/phoneme/corebridge/MainActivity$61;-><init>(Lcom/phoneme/corebridge/MainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_93

    const/16 v1, 0xd

    const v2, -0x333334

    const-string v4, "Ch\u01b0a c\u00f3 game \u0111\u00e3 l\u01b0u. H\u00e3y nh\u1eadp JAR/JAD m\u1edbi."

    invoke-virtual {p0, v4, v1, v2}, Lcom/phoneme/corebridge/MainActivity;->label(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_aa

    :cond_93
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_9a
    if-ltz v2, :cond_aa

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameLibraryEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    invoke-direct {p0, v3, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->addGameLibraryEntry(Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9a

    :cond_aa
    :goto_aa
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public startLcdUiPolling()V
    .registers 3

    iget-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiPolling:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiPolling:Z

    new-instance v0, Lcom/phoneme/corebridge/MainActivity$62;

    invoke-direct {v0, p0}, Lcom/phoneme/corebridge/MainActivity$62;-><init>(Lcom/phoneme/corebridge/MainActivity;)V

    iput-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->lcdUiPoller:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startSelectedGame()V
    .registers 13

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    if-eqz v0, :cond_172

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_172

    :cond_c
    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->selectedInstalledEntry()Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    iget-boolean v2, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->configured:Z

    if-nez v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M\u1edf thi\u1ebft l\u1eadp l\u1ea7n \u0111\u1ea7u tr\u01b0\u1edbc khi ch\u1ea1y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/phoneme/corebridge/MainActivity;->showAppSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;Z)V

    return-void

    :cond_33
    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->applyAppPresentationSettings(Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;)V

    :cond_36
    iput-boolean v1, p0, Lcom/phoneme/corebridge/MainActivity;->directInstalledSession:Z

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->mainClassView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/phoneme/corebridge/MainActivity;->detectMainClass(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :cond_52
    if-eqz v2, :cond_16c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5c

    goto/16 :goto_16c

    :cond_5c
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lcom/phoneme/corebridge/MainActivity;->selectedFile:Ljava/io/File;

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->selectedGameScope:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_6e

    move-object v7, v3

    goto :goto_73

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_73
    const/16 v2, 0x1000

    if-nez v0, :cond_7a

    const/16 v4, 0x168

    goto :goto_84

    :cond_7a
    iget v4, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_84
    move v10, v4

    if-nez v0, :cond_8a

    const/16 v0, 0x280

    goto :goto_94

    :cond_8a
    iget v0, v0, Lcom/phoneme/corebridge/MainActivity$GameLibraryEntry;->canvasHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_94
    move v11, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canvas launch size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_d7

    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeIsRunning(J)Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string v0, "D\u1eebng phi\u00ean VM c\u0169 tr\u01b0\u1edbc khi kh\u1edfi ch\u1ea1y l\u1ea1i."

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->stopLcdUiPolling()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->stopRendering()V

    :cond_d2
    iget-wide v0, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-static {v0, v1}, Lcom/phoneme/corebridge/CoreBridgeNative;->nativeStop(J)V

    :cond_d7
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->clearFreshRestartGuard()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingScreenShownIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->screenIdToProgramKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "new JAR"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->clearPendingTerminalIdentity(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->hostProgramListNavigationArmed:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->ignoreStaleScreenEventsAfterDestruction:Z

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    const-string v1, "LCDUI clone records reset for new JAR"

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    const-string v1, "--- B\u1eaft \u0111\u1ea7u CoreBridge ---"

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gamePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    iget-wide v2, p0, Lcom/phoneme/corebridge/MainActivity;->nativeRuntime:J

    invoke-virtual {v1, v2, v3}, Lcom/phoneme/corebridge/GameSurfaceView;->setRuntime(J)V

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v1, v0}, Lcom/phoneme/corebridge/GameSurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->gameView:Lcom/phoneme/corebridge/GameSurfaceView;

    invoke-virtual {v0}, Lcom/phoneme/corebridge/GameSurfaceView;->requestFocus()Z

    invoke-static {v8}, Lcom/phoneme/corebridge/ResilientImageJar;->normalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phoneme/corebridge/MainActivity$63;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/phoneme/corebridge/MainActivity$63;-><init>(Lcom/phoneme/corebridge/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;II)V

    const-string v2, "PhoneME-Launch"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_16c
    :goto_16c
    const-string v0, "Kh\u00f4ng t\u00ecm th\u1ea5y MIDlet class trong manifest."

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_172
    :goto_172
    const-string v0, "H\u00e3y ch\u1ecdn m\u1ed9t file JAR/JAD tr\u01b0\u1edbc."

    invoke-virtual {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method public terminalizeCloneHostState(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_134

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_134

    :cond_a
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/phoneme/corebridge/MainActivity;->textBoxResumeStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/phoneme/corebridge/MainActivity;->resumeTextBoxScreenId:I

    goto :goto_1f

    :cond_1d
    iget v1, v1, Lcom/phoneme/corebridge/MainActivity$TextBoxResumeState;->screenId:I

    :goto_1f
    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->freshRestartProgramKeys:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->dropTextBoxResumeState(Ljava/lang/String;)V

    const-string v2, ""

    if-eqz v0, :cond_35

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->activeProgramKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->clearTextBoxResumeState()V

    :cond_35
    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->lastForegroundProgramKey:Ljava/lang/String;

    :cond_3f
    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iput-object v2, p0, Lcom/phoneme/corebridge/MainActivity;->focusedProgramKey:Ljava/lang/String;

    :cond_49
    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->canvasPresentedForActiveClone:Z

    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5d
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_7b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->appIdToProgramKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :cond_91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->screenIdToProgramKey:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a0
    :goto_a0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_be
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d4

    iget-object v3, p0, Lcom/phoneme/corebridge/MainActivity;->screenIdToProgramKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    :cond_d4
    iget-object v0, p0, Lcom/phoneme/corebridge/MainActivity;->pendingTerminalProgramKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string v0, "terminalized clone"

    invoke-direct {p0, v0}, Lcom/phoneme/corebridge/MainActivity;->clearPendingTerminalIdentity(Ljava/lang/String;)V

    :cond_e1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->suppressStaleTextBoxEvents:Z

    iput-boolean v0, p0, Lcom/phoneme/corebridge/MainActivity;->ignoreStaleScreenEventsAfterDestruction:Z

    iput v1, p0, Lcom/phoneme/corebridge/MainActivity;->staleTextBoxScreenId:I

    iput-boolean v2, p0, Lcom/phoneme/corebridge/MainActivity;->acceptDestinationTextBoxWhileListVisible:Z

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->clearFreshRestartGuard()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LCDUI clone terminalized host state programKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " appId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " runningKeys="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/phoneme/corebridge/MainActivity;->runningProgramKeys:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/phoneme/corebridge/MainActivity;->nativeListScreen:Z

    if-eqz p1, :cond_133

    iget-object p1, p0, Lcom/phoneme/corebridge/MainActivity;->formOverlay:Landroid/widget/FrameLayout;

    if-nez p1, :cond_130

    goto :goto_133

    :cond_130
    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->rebuildFormOverlay()V

    :cond_133
    :goto_133
    return-void

    :cond_134
    :goto_134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LCDUI terminal cleanup skipped; empty programKey reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phoneme/corebridge/MainActivity;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method public writeCrashDiagnostics(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 15

    const-string v0, "PhoneME-CoreBridge"

    const-string v1, "\n"

    const-string v2, ""

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/phoneme/corebridge/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "corebridge-crash-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd-HHmmss-SSS"

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_3a
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_138

    :try_start_4c
    const-string v5, "PhoneME CoreBridge uncaught exception\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->now()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_7e

    move-object v6, v2

    goto :goto_82

    :cond_7e
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_a0

    move-object v6, v2

    goto :goto_a4

    :cond_a0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_a4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_12c

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5
    :try_end_ba
    .catchall {:try_start_4c .. :try_end_ba} :catchall_133

    move v8, v7

    :goto_bb
    const-string v9, "\tat "

    if-ge v8, v6, :cond_e0

    :try_start_bf
    aget-object v10, v5, v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_bb

    :cond_e0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_12c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caused-by="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    :goto_109
    if-ge v7, v6, :cond_12c

    aget-object v8, v5, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_109

    :cond_12c
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_132
    .catchall {:try_start_bf .. :try_end_132} :catchall_133

    goto :goto_13e

    :catchall_133
    move-exception v5

    :try_start_134
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    throw v5
    :try_end_138
    .catchall {:try_start_134 .. :try_end_138} :catchall_138

    :catchall_138
    move-exception v4

    const-string v4, "Kh\u00f4ng ghi \u0111\u01b0\u1ee3c crash report"

    invoke-static {v0, v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13e
    iget-object v4, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    if-eqz v4, :cond_19e

    :try_start_142
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/phoneme/corebridge/MainActivity;->liveLogFile:Ljava/io/File;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_156
    .catchall {:try_start_142 .. :try_end_156} :catchall_198

    :try_start_156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/phoneme/corebridge/MainActivity;->now()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UNCAUGHT EXCEPTION thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_16f

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_16f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " report="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_18f
    .catchall {:try_start_156 .. :try_end_18f} :catchall_193

    :try_start_18f
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_19e

    :catchall_193
    move-exception p1

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    throw p1
    :try_end_198
    .catchall {:try_start_18f .. :try_end_198} :catchall_198

    :catchall_198
    move-exception p1

    const-string p1, "Kh\u00f4ng ghi \u0111\u01b0\u1ee3c crash marker v\u00e0o log phi\u00ean"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19e
    :goto_19e
    return-void
.end method
