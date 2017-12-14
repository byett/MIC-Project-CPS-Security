package inet.examples.MIC;

import inet.common.figures.DelegateSignalConfigurator;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;

network MIC_DEMO
{
  parameters:
    string hostType = default("WirelessHost");
    string mediumType = default("IdealRadioMedium");

    @display("bgb=1000,1000;bgg=100,1,grey95");

  submodules:
    configurator: IPv4NetworkConfigurator {
      @display("p=200,50");
    }
    radioMedium: <mediumType> like IRadioMedium {
      @display("p=950,50");
    }
    Sensor_SensorA: <hostType> like INetworkNode {
      @display("p=150,300");
    }
    Sensor_SensorB: <hostType> like INetworkNode {
      @display("p=150,200");
    }
    Controller_CNT: <hostType> like INetworkNode {
      @display("p=300,250");
    }
    Actuator_ActuatorA: <hostType> like INetworkNode {
      @display("p=300,500");
    }
    Actuator_ActuatorB: <hostType> like INetworkNode {
      @display("p=300,400");
    }
    Physical_Process_PP: <hostType> like INetworkNode {
      @display("p=150,450");
    }
}