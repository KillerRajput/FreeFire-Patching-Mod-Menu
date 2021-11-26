package mpg.team.ff;

import android.app.Activity;
import android.os.Bundle;

public class MainActivity extends Activity {
      public String GameActivity = "com.dts.freefireth.FFMainActivity";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toast.makeText((Context)this, "Modded By Thakur Sahab (Anmol Singh)", Toast.LENGTH_LONG).show();
        StaticActivity.Start(this);
    try {
      startActivity(new Intent((Context)this, Class.forName(this.GameActivity)));
      return;
    } catch (ClassNotFoundException classNotFoundException) {
      classNotFoundException.printStackTrace();
      return;
    }
    }
}
