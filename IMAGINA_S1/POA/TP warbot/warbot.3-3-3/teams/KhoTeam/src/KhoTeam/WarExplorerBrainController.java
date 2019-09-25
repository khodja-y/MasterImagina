package KhoTeam;

import edu.warbot.agents.agents.WarExplorer;
import edu.warbot.brains.brains.WarExplorerBrain;

public abstract class WarExplorerBrainController extends WarExplorerBrain {

    public WarExplorerBrainController() {
        super();

    }

    @Override
    public String action() {

        if (isBlocked())
            setRandomHeading();
        else{
        	if(getHeading()==)
        }
        return WarExplorer.ACTION_MOVE;
        
    }

}
