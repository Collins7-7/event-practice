import {Admin, Resource} from "react-admin"
import restProvider from "ra-data-simple-rest"
import EventList from "./components/EventList"
import EventCreate from "./components/EventCreate"

function App() {
  return <Admin dataProvider={restProvider("http://localhost:3000")}>
    <Resource name="events" list={EventList} create={EventCreate}/>
   </Admin>
}

export default App;
